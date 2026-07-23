# 🧩 Incident Review (Postmortem)

> Every mature engineering organization (Amazon, Google, Netflix, Microsoft, etc.) performs a **Post-Incident Review (PIR)** or **Postmortem** after an operational incident. This document records the analysis, root cause, recovery process, and preventive actions for the infrastructure drift incident encountered during Project Fortress.

---

# Incident Title

**Terraform Plan Failure Due to Infrastructure Drift in Amazon EKS**

---

# Incident Summary

A Terraform deployment pipeline failed because the Helm provider could not communicate with the Kubernetes API server after the managed Amazon EKS node group had been manually deleted outside Terraform.

This resulted in Terraform being unable to refresh the Helm provider state, causing the deployment pipeline to terminate before infrastructure changes could be applied.

---

# Timeline

## T0 — Infrastructure Healthy

```text
Terraform
    │
    ▼
EKS Cluster
    │
    ▼
Managed Node Group
    │
    ▼
Helm Release
```

The infrastructure was fully operational, and Terraform state accurately reflected the deployed resources.

---

## T1 — Manual Infrastructure Change

A managed EKS node group was manually deleted from the AWS Management Console.

```text
AWS Console
    │
Delete Node Group
```

Terraform was not informed of this change.

---

## T2 — Terraform State Became Stale

Terraform state still contained references to:

- ✅ Managed Node Group
- ✅ Helm Release
- ✅ EKS Access Entry

Although the node group no longer existed in AWS, Terraform still believed it did.

---

## T3 — Deployment Pipeline Executed

The CI/CD pipeline executed:

```bash
terraform plan
```

Terraform refreshed providers in the following order:

```text
AWS Provider
      │
      ▼
Amazon EKS
      │
      ▼
Helm Provider
      │
      ▼
Connect to Kubernetes API
```

---

## T4 — Failure

Since no worker nodes existed, the Kubernetes API was unavailable for Helm provider operations.

Terraform terminated with the error:

```text
Kubernetes cluster unreachable
```

---

## T5 — Investigation

The following diagnostic commands were used during troubleshooting:

```bash
terraform state list
terraform state show
terraform state rm
kubectl get nodes
aws eks describe-cluster
```

These commands confirmed that the Terraform state no longer matched the actual AWS infrastructure.

---

## T6 — Recovery

The following recovery actions were performed:

- Removed stale resources from Terraform state
- Recreated EKS access entries
- Recreated the managed node group
- Verified worker nodes successfully joined the cluster

Verification:

```bash
kubectl get nodes
```

Output:

```text
Ready
Ready
Ready
```

The Kubernetes cluster was restored to a healthy state.

---

# Root Cause Analysis (RCA)

A Root Cause Analysis explains **why** the incident occurred, not simply **what** happened.

## Immediate Cause

Terraform could not authenticate to a usable Kubernetes cluster because there were no worker nodes after the managed EKS node group had been manually deleted.

---

## Contributing Factors

- Manual modification of Terraform-managed infrastructure
- Terraform state no longer reflected the actual AWS environment
- Helm release remained in Terraform state
- No automated infrastructure drift detection before deployment

---

## Root Cause

**Infrastructure drift caused by the manual deletion of Terraform-managed AWS resources outside Terraform.**

---

# Impact

If this incident had occurred in a production environment, the following impacts would have been expected:

- CI/CD pipeline failures
- Infrastructure deployments blocked
- Cluster upgrades prevented
- Reduced confidence in Terraform state integrity
- Manual engineering intervention required to restore service

---

# Resolution

The incident was resolved through the following actions:

1. Identified Terraform state drift
2. Verified actual AWS infrastructure
3. Removed stale Helm resources from Terraform state
4. Recreated Amazon EKS access resources
5. Recreated the managed node group
6. Verified Kubernetes cluster health
7. Confirmed `terraform plan` and `terraform apply` completed successfully

---

# Preventive Actions

## Short-Term

- Avoid manual deletion of Terraform-managed resources
- Verify Kubernetes cluster health before Helm operations
- Perform Terraform state validation before deployments

---

## Long-Term

Implement the following operational improvements:

- Scheduled Terraform drift detection
- GitOps-based infrastructure management
- IAM policies restricting manual production infrastructure changes
- Automated infrastructure health checks
- Pipeline pre-deployment validation
- Regular Terraform state audits

---

# Lessons Learned

This incident reinforced practical knowledge across multiple DevOps domains.

## Terraform

- Remote State Management
- Infrastructure Drift
- State Refresh
- State Reconciliation
- State Removal (`terraform state rm`)
- Resource Recreation

---

## AWS

- Amazon EKS
- Managed Node Groups
- IAM Access Entries
- Access Policies

---

## Kubernetes

- kubeconfig Management
- Authentication
- Worker Node Lifecycle
- Cluster Health Validation

---

## Helm

- Helm Provider
- Helm State Management
- Helm Release Lifecycle

---

## CI/CD

- GitHub Actions
- OIDC Authentication
- Terraform Deployment Pipelines
- Least Privilege IAM

---

# Key Takeaways

This incident demonstrated the operational risks associated with manual modifications to Terraform-managed infrastructure.

The successful resolution required a combination of Terraform state management, AWS EKS administration, Kubernetes troubleshooting, and CI/CD pipeline debugging.

It also reinforced an important DevOps principle:

> **Terraform should remain the single source of truth for infrastructure. Manual changes outside Terraform introduce infrastructure drift, increase operational risk, and reduce deployment reliability.**