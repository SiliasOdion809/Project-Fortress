
variable "assets_bucket_arn" {
  type = string
}

variable "oidc_provider_arn" {
  type = string
}

variable "oidc_provider" {
  type = string
}

variable "mysql_secret_arn" {
  description = "ARN of the MySQL secret"
  type        = string
}

variable "postgres_secret_arn" {
  description = "ARN of the PostgreSQL secret"
  type        = string
}

variable "environment_parameter_arn" {
  description = "ARN of the SSM parameter for the environment"
  type        = string
}

variable "assets_bucket_parameter_arn" {
  description = "ARN of the SSM parameter for the assets bucket"
  type        = string
}

variable "github_oidc_provider_arn" {
  description = "ARN of the GitHub OIDC Provider"
  type        = string
}

variable "tags" {
  description = "Common resource tags"
  type        = map(string)
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "environment" {
  description = "The environment (e.g., dev, staging, prod)"
  type        = string
}

variable "github_subject_patterns" {
  description = "Allowed GitHub OIDC subject patterns"
  type        = list(string)
}

variable "terraform_state_bucket_name" {
  description = "Terraform state bucket name"
  type        = string
}

variable "kms_key_arn" {
  description = "ARN of the Project Fortress KMS key"
  type        = string
}

variable "eks_kms_key_arn" {
  description = "ARN of the EKS KMS key"
  type        = string
}