# Incident Review: RDS Authentication and Database Initialization

- **Incident ID:** PF-2026-08-05-001
- **Project:** Project Fortress
- **Phase:** Phase 1 – Retail Store Deployment
- **Date:** August 5, 2026
- **Severity:** High
- **Status:** Resolved

---

# Summary

During deployment of the Retail Store application to Amazon EKS, the Catalog service initially failed to authenticate with the Amazon RDS MySQL database. Although the infrastructure deployment completed successfully and all Kubernetes workloads appeared healthy, database authentication could not be confirmed, preventing confidence in the application's ability to communicate with the backend database.

The incident was investigated by validating every layer of the deployment, including Terraform state, Amazon RDS, AWS Secrets Manager, Kubernetes networking, and application configuration. After confirming that the application could successfully authenticate against the database using the credentials stored in AWS Secrets Manager, the application was redeployed and the entire checkout workflow completed successfully.

---

# Impact

The incident affected deployment verification.

Although infrastructure provisioning completed successfully, database connectivity could not initially be confirmed.

Potential risks included:

- Catalog service failing to communicate with MySQL
- Checkout workflow failure
- Inability to guarantee successful application deployment
- Delayed deployment validation

No infrastructure resources were lost or recreated during this incident.

---

# Environment

| Component | Value |
|-----------|-------|
| Cloud Provider | AWS |
| Region | us-east-1 |
| Kubernetes | Amazon EKS |
| Database | Amazon RDS MySQL 8.0 |
| Secret Store | AWS Secrets Manager |
| Deployment Tool | Helmfile |
| Infrastructure | Terraform |
| CI/CD | GitHub Actions |

---

# Symptoms

Observed during troubleshooting:

- MySQL authentication failures
- Database connectivity could not initially be verified
- Uncertainty whether the application was using the correct credentials
- Deployment completed but required manual verification

Example error:

```
ERROR 1045 (28000):
Access denied for user 'admin'
(using password: YES)
```

---

# Investigation

## 1. Verified GitHub Actions

Confirmed that the deployment pipeline completed successfully.

Verified:

- Infrastructure deployment
- Helm deployment
- Smoke tests
- Deployment verification

Result:

Infrastructure deployment succeeded.

---

## 2. Verified Kubernetes

Confirmed:

- Catalog pod running
- Cart pod running
- Checkout pod running
- Orders pod running
- UI pod running

No pod failures were observed after deployment.

---

## 3. Verified Amazon RDS

Checked the RDS instance.

Verified:

- Database status
- Endpoint
- Master username

Result:

- Status: Available
- Master Username: admin

---

## 4. Verified Terraform State

Inspected Terraform state.

Confirmed:

- RDS endpoint
- Database name
- Username
- Resource configuration

Terraform reported no infrastructure drift.

---

## 5. Verified AWS Secrets Manager

Retrieved the stored MySQL secret.

Confirmed:

- Username
- Password

matched the expected deployment configuration.

---

## 6. Tested Database Connectivity

Created a temporary MySQL client pod inside the Kubernetes cluster.

Connected directly to the RDS instance using credentials retrieved from AWS Secrets Manager.

Executed:

```sql
SELECT 1;
```

Result:

```
+---+
| 1 |
+---+
| 1 |
+---+
```

This verified:

- DNS resolution
- Security Groups
- VPC routing
- Kubernetes networking
- Database authentication
- Secret correctness

---

## 7. Verified End-to-End Application

After confirming database connectivity, the application was tested through the browser.

Successfully completed:

- Home page
- Product catalog
- Add to cart
- Shopping cart
- Checkout
- Shipping information
- Delivery selection
- Payment
- Order confirmation

The application completed the full purchasing workflow successfully.

---

# Root Cause

The infrastructure itself was healthy throughout the investigation.

The incident was caused by uncertainty around database authentication during deployment, requiring validation that:

- the application was using the correct credentials,
- AWS Secrets Manager contained the expected values,
- Amazon RDS accepted those credentials,
- Kubernetes networking allowed successful database communication.

Once authentication was validated directly from inside the Kubernetes cluster, the deployment was confirmed to be functioning correctly.

---

# Resolution

The incident was resolved by:

- Verifying RDS configuration
- Validating Terraform state
- Retrieving credentials from AWS Secrets Manager
- Testing authentication from inside Kubernetes
- Confirming successful SQL execution
- Redeploying the Retail Store application
- Performing complete end-to-end application validation

---

# Verification Checklist

## Infrastructure

- Terraform State Verified
- Amazon RDS Healthy
- AWS Secrets Manager Verified
- Kubernetes Pods Healthy
- ALB Healthy

## Database

- Authentication Successful
- SQL Query Successful

## Application

- Home Page
- Catalog
- Cart
- Checkout
- Shipping
- Payment
- Order Confirmation

All verified successfully.

---

# Lessons Learned

- Infrastructure deployment success does not guarantee application readiness.
- Database connectivity should always be validated independently.
- Secrets Manager values should be verified whenever authentication issues occur.
- Kubernetes debug pods are valuable for isolating networking and authentication problems.
- End-to-end testing should always be performed after deployment.

---

# Preventive Actions

- Add a database connectivity validation step to the deployment pipeline.
- Include automated SQL health checks after deployment.
- Add startup readiness checks for database-backed services.
- Document the standard database troubleshooting procedure.
- Continue using smoke tests to validate application functionality after every deployment.

---

# Final Outcome

The Retail Store application was successfully deployed to Amazon EKS.

Verified components include:

- Amazon EKS
- Amazon RDS (MySQL)
- Amazon RDS (PostgreSQL)
- AWS Secrets Manager
- Terraform Infrastructure
- Helm Deployment
- GitHub Actions CI/CD Pipeline

The application completed the full checkout workflow successfully, confirming that infrastructure provisioning, database connectivity, Kubernetes networking, and application integration were functioning as expected.