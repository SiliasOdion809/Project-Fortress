## Business Scenario

Let's continue the InnovateMart storyline.

Three months after Project Fortress began, the Platform Engineering team completed the production hardening of the AWS infrastructure. During a quarterly security review, the security team discovered that the GitHub Actions pipelines were authenticating to AWS using long-lived IAM user access keys stored in GitHub Secrets.

Although encrypted, these credentials represented a security risk because they could be compromised, rotated incorrectly, or remain active indefinitely.

Leadership approved Phase 2 – CI/CD & Runtime Security with one primary objective:

Eliminate long-lived AWS credentials from the deployment pipeline and replace them with secure, short-lived credentials using GitHub OIDC and AWS IAM Roles.

## Architecture Before Phase 2

GitHub Actions
      │
      ▼
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
      │
      ▼
IAM User
      │
      ▼
AWS Account

Problems:

❌ Long-lived credentials
❌ Manual credential rotation
❌ Secrets stored in GitHub
❌ Higher impact if credentials are compromis

## Architecture After Phase 2

GitHub Actions
      │
OIDC Identity Token
      │
      ▼
AWS IAM OIDC Provider
      │
      ▼
IAM Deployment Role
      │
Temporary Credentials
      │
      ▼
AWS Services

Benefits:

✅ No long-lived AWS access keys
✅ Short-lived credentials
✅ Automatic credential rotation
✅ Least-privilege deployment role
✅ Industry best practice

## Design Review

We're going to create a dedicated module:
terraform/
└── modules/
    └── oidc/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf