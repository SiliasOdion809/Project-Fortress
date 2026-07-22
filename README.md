# 🏰 Project Fortress

## Production Hardening of a Production-Grade AWS EKS Platform

> From infrastructure deployment to production operations.

![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws)
![Terraform](https://img.shields.io/badge/Terraform-IaC-623CE4?logo=terraform)
![Amazon EKS](https://img.shields.io/badge/Amazon-EKS-FF9900?logo=amazonaws)
![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?logo=kubernetes)
![GitHub Actions](https://img.shields.io/badge/GitHub-Actions-2088FF?logo=github-actions)
![OIDC](https://img.shields.io/badge/OIDC-Authentication-success)
![IAM](https://img.shields.io/badge/IAM-Least%20Privilege-blue)
![Security](https://img.shields.io/badge/Security-Production-green)

---

# 📖 Overview

Project Fortress is the next evolution of **Project Bedrock**.

While Project Bedrock focused on building a production-grade AWS platform from scratch, Project Fortress focuses on operating that platform using production DevOps and Cloud Security best practices.

The project transforms the original infrastructure into a more secure, maintainable, and enterprise-ready platform by implementing identity federation, least-privilege access, centralized secrets management, configuration management, infrastructure hardening, incident recovery practices, and secure CI/CD.

The goal is to simulate the work performed by a Cloud/DevOps Engineer after an application has already reached production.

---

# 🎯 Objectives

Project Fortress focuses on:

- Production infrastructure hardening
- Secure CI/CD using GitHub OIDC
- Least-Privilege IAM implementation
- Infrastructure drift prevention
- Secure secrets management
- Centralized configuration management
- Production-ready EKS access management
- Platform reliability
- Incident response documentation
- Operational excellence

---

# 🏗 Project Architecture

Project Fortress extends the Project Bedrock platform by introducing an operational layer around the existing infrastructure.

Core platform includes:

- Amazon VPC
- Public & Private Subnets
- Internet Gateway
- NAT Gateway
- Amazon EKS
- Managed Node Groups
- Amazon RDS
- Amazon S3
- AWS Lambda
- CloudWatch
- IAM
- Application Load Balancer

Production enhancements include:

- GitHub OIDC Authentication
- IAM Roles for GitHub Actions
- Explicit EKS Access Entries
- Customer Managed KMS Keys
- AWS Secrets Manager
- AWS Systems Manager Parameter Store
- Infrastructure Drift Recovery
- Production Incident Documentation
- Secure Deployment Pipelines

---

# 🚀 Major Improvements over Project Bedrock

## 🔐 Secure Authentication

- Eliminated long-lived AWS access keys
- GitHub Actions authenticates using OpenID Connect (OIDC)
- Temporary AWS credentials
- IAM Trust Policies

---

## 🔒 Infrastructure Security

Implemented:

- Least Privilege IAM
- Customer Managed KMS Keys
- Secrets Manager
- Parameter Store
- Explicit EKS Access Entries
- IAM Role separation

---

## ⚙ CI/CD Improvements

GitHub Actions now performs:

- Terraform Validation
- Terraform Plan
- Terraform Apply
- Kubernetes Authentication
- ALB Controller Installation
- Infrastructure Validation
- Automated Deployment

---

## ☸ Kubernetes Hardening

Implemented:

- Explicit Cluster Access Entries
- Cluster Administrator Role Management
- Secure kubeconfig generation
- OIDC-based authentication
- AWS Load Balancer Controller automation

---

# 🔑 Security Features

✔ GitHub OIDC Authentication

✔ IAM Least Privilege

✔ Secrets Manager

✔ AWS Systems Manager Parameter Store

✔ Customer Managed KMS Keys

✔ IAM Role Separation

✔ Secure Terraform Remote State

✔ Private Networking

✔ Security Groups

✔ Encryption at Rest

---

# ☁ AWS Services Used

| Service | Purpose |
|----------|----------|
| Amazon EKS | Kubernetes Platform |
| IAM | Identity Management |
| IAM OIDC Provider | GitHub Authentication |
| KMS | Encryption |
| Secrets Manager | Secret Storage |
| Systems Manager Parameter Store | Configuration Management |
| Lambda | Asset Processing |
| RDS | Databases |
| CloudWatch | Monitoring |
| S3 | Assets & Terraform State |
| ECR | Container Images |

---

# 🛠 Terraform Modules

```
terraform/
│
├── networking
├── eks
├── iam
├── kms
├── secrets-manager
├── ssm
├── lambda
├── monitoring
├── s3
├── rds
├── dynamodb
├── oidc
└── ecr
```

---

# 🔄 GitHub Actions Workflow

```
Developer
    │
    ▼
GitHub Push
    │
    ▼
OIDC Authentication
    │
    ▼
Terraform Validate
    │
    ▼
Terraform Plan
    │
    ▼
Terraform Apply
    │
    ▼
Update kubeconfig
    │
    ▼
Deploy ALB Controller
    │
    ▼
Verify Kubernetes
    │
    ▼
Infrastructure Ready
```

---

# 🔒 Identity & Access Management

Project Fortress implements:

- GitHub OIDC Provider
- GitHub Deployment Role
- Cloud-admin Access Entry
- IAM Policies
- Trust Relationships
- AmazonEKSClusterAdminPolicy
- Explicit EKS Access Entries

No cluster access relies on the cluster creator.

---

# 🔐 Secrets & Configuration

Secrets stored in AWS Secrets Manager include:

- MySQL Credentials
- PostgreSQL Credentials

Configuration stored in Parameter Store includes:

- AWS Region
- Cluster Name
- Environment
- Asset Bucket Name

---

# 🚨 Incident Response

Project Fortress documents production-style incidents, including:

- Infrastructure Drift
- Root Cause Analysis
- Recovery Procedures
- Lessons Learned
- Preventive Actions

A complete postmortem was created for recovering an EKS cluster after manual infrastructure drift.

---

# 📈 Operational Improvements

Implemented:

- Infrastructure Drift Detection
- Secure Deployment Authentication
- Production Documentation
- Terraform Module Refactoring
- CI/CD Hardening
- Explicit Access Management

---

# 📊 Results

✔ Production-ready AWS Platform

✔ Secure GitHub Actions Authentication

✔ OIDC Federation

✔ Explicit EKS Access Control

✔ Secure Secret Management

✔ Infrastructure as Code

✔ Enterprise IAM Design

✔ Production Incident Documentation

✔ Automated Deployments

✔ Operational Best Practices

---

# 📂 Repository Structure

```
project-fortress/

├── .github/
│   └── workflows/
│
├── terraform/
│   ├── modules/
│   ├── backend.tf
│   ├── provider.tf
│   ├── versions.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── docs/
│   ├── incident-reports/
│   ├── architecture/
│   └── runbooks/
│
├── diagrams/
├── scripts/
├── kubernetes/
├── README.md
```

---

# 📚 Key Learnings

Project Fortress strengthened my knowledge of:

- Production DevOps
- AWS Security
- IAM
- GitHub OIDC
- Infrastructure Hardening
- Kubernetes Operations
- Amazon EKS
- Terraform Modules
- Cloud Security
- Incident Management
- Infrastructure Drift Recovery
- Production CI/CD
- AWS KMS
- AWS Secrets Manager
- AWS Systems Manager

---

# 🚀 Future Enhancements

- ArgoCD GitOps
- External Secrets Operator
- Prometheus
- Grafana
- AWS WAF
- Falco Runtime Security
- Kyverno Policies
- Trivy Image Scanning
- Policy as Code
- Multi-Region Disaster Recovery

---

# 👨‍💻 Author

**Silias Adodo**

Cloud & DevOps Engineer

- GitHub: https://github.com/SiliasOdion809
- LinkedIn: https://linkedin.com/in/siliasadodo

---

# ⭐ Project Status

**Project Fortress Phase 2 – CI/CD Security & Platform Hardening** ✅

The platform now demonstrates a production-oriented AWS DevOps environment with secure identity federation, explicit Kubernetes access control, centralized secrets management, infrastructure hardening, and automated deployments using GitHub Actions and Terraform.