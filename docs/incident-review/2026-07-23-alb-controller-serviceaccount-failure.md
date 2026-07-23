# Incident Review: AWS Load Balancer Controller Deployment Failure

**Incident ID:** 2026-07-23-alb-controller-serviceaccount-failure

**Project:** Project Fortress

**Environment:** Development

**Status:** Resolved ✅

**Severity:** Medium

**Duration:** ~Several hours

---

# Summary

The GitHub Actions deployment pipeline consistently failed while deploying the AWS Load Balancer Controller into the Amazon EKS cluster.

Terraform successfully provisioned the AWS infrastructure and the EKS cluster, but the Helm deployment of the AWS Load Balancer Controller repeatedly failed, preventing the deployment from becoming available.

The issue was ultimately traced to an incorrect ServiceAccount deployment strategy and ownership mismatch between Terraform and Helm.

---

# Impact

- Terraform infrastructure deployed successfully.
- GitHub Actions pipeline failed.
- AWS Load Balancer Controller never became Ready.
- No ALB resources could be provisioned.
- Subsequent Kubernetes workloads depending on the controller could not function.

---

# Symptoms

GitHub Actions reported:

```
resource Deployment/kube-system/aws-load-balancer-controller not ready

Progress deadline exceeded
```

Later debugging showed:

```
serviceaccount "aws-load-balancer-controller" not found
```

ReplicaSet events showed:

```
FailedCreate

pods "aws-load-balancer-controller-xxxxx"

is forbidden:

serviceaccount "aws-load-balancer-controller" not found
```

---

# Timeline

## Initial deployment

Terraform successfully created:

- VPC
- IAM Roles
- EKS Cluster
- Node Groups
- RDS
- DynamoDB
- Secrets Manager
- SSM Parameters

GitHub Actions then attempted to install the AWS Load Balancer Controller.

---

## First Failure

Helm installation timed out with:

```
Deployment not ready

Replicas 0/2
```

---

## Investigation

Verified:

```
kubectl get nodes
```

Result:

```
Healthy
```

Verified cluster connectivity:

```
kubectl cluster-info
```

Result:

```
Healthy
```

Verified IAM Role:

```
aws iam get-role \
--role-name alb-controller-irsa-role
```

Result:

```
Role existed correctly.
```

---

## ReplicaSet Investigation

Running:

```bash
kubectl describe rs \
-n kube-system
```

showed:

```
FailedCreate

serviceaccount
aws-load-balancer-controller
not found
```

This immediately narrowed the investigation to the Kubernetes ServiceAccount.

---

## Root Cause Discovery

The deployment workflow installed Helm using:

```yaml
serviceAccount.create=false
```

This configuration instructs Helm NOT to create the ServiceAccount.

However, no ServiceAccount existed in the cluster.

Therefore:

Deployment

↓

ReplicaSet

↓

Pod creation

↓

Failed

↓

No ServiceAccount

---

At the same time Terraform had previously attempted to manage Kubernetes resources, creating an ownership conflict between Terraform and Helm.

This produced inconsistent cluster state after earlier troubleshooting sessions.

---

# Root Cause

The AWS Load Balancer Controller Deployment referenced a ServiceAccount that did not exist.

Because:

```
serviceAccount.create=false
```

Helm assumed the ServiceAccount already existed.

It did not.

Therefore Kubernetes refused to create controller Pods.

---

# Resolution

The deployment workflow was updated to allow Helm to manage the ServiceAccount.

Changed from:

```yaml
--set serviceAccount.create=false
```

to:

```yaml
--set serviceAccount.create=true
```

IRSA annotation was also supplied:

```yaml
--set serviceAccount.annotations."eks\.amazonaws\.com/role-arn"=<ROLE ARN>
```

After redeploying:

- ServiceAccount created successfully
- ReplicaSet created
- Pods scheduled
- Deployment became Ready

---

# Final Architecture

Terraform responsibilities:

- VPC
- IAM
- KMS
- EKS
- RDS
- DynamoDB
- S3
- Lambda
- Secrets Manager
- SSM

GitHub Actions responsibilities:

- Configure kubeconfig
- Install Helm
- Install AWS Load Balancer Controller
- Deploy Kubernetes workloads
- Deploy Retail Store application

This separation removes ownership conflicts between Terraform and Helm.

---

# Lessons Learned

## 1. One tool should own one resource.

Terraform and Helm should never manage the same Kubernetes resource.

---

## 2. ServiceAccount ownership matters.

If:

```
serviceAccount.create=false
```

then the ServiceAccount must already exist.

Otherwise Pods cannot start.

---

## 3. ReplicaSet events are often more useful than Deployment status.

Instead of only inspecting:

```
kubectl describe deployment
```

inspect:

```
kubectl describe rs
```

and

```
kubectl get events
```

These quickly revealed the missing ServiceAccount.

---

## 4. Validate assumptions

Always verify:

```
kubectl get sa
```

instead of assuming a ServiceAccount exists.

---

## 5. IRSA requires three components

All three must exist:

- IAM Role
- OIDC Provider
- Kubernetes ServiceAccount annotation

Missing any one of these prevents successful authentication.

---

# Commands Used During Investigation

```bash
kubectl get nodes

kubectl cluster-info

kubectl get pods -n kube-system

kubectl describe deployment aws-load-balancer-controller -n kube-system

kubectl describe rs -n kube-system

kubectl get events -n kube-system

kubectl get sa -n kube-system

helm status aws-load-balancer-controller -n kube-system

aws iam get-role --role-name alb-controller-irsa-role
```

---

# Outcome

✅ Terraform Apply succeeded

✅ GitHub Actions pipeline succeeded

✅ AWS Load Balancer Controller deployed successfully

✅ Kubernetes Deployment healthy

✅ CI/CD pipeline fully operational

---

# Preventive Actions

- Clearly separate infrastructure provisioning from application deployment.
- Document ownership boundaries between Terraform and Helm.
- Add automated verification of the ServiceAccount after Helm deployment.
- Keep troubleshooting commands in the project runbook for future incidents.

---

# References

- AWS Load Balancer Controller
- Amazon EKS IRSA Documentation
- Helm Documentation
- Kubernetes ServiceAccount Documentation
