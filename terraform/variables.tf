variable "project_name" {
  description = "Project name"
  type        = string
  default     = "project-fortress"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "mysql_username" {
  description = "MySQL administrator username"
  type        = string
  default     = "admin"
}

variable "mysql_password" {
  description = "MySQL password"
  type        = string
  default     = "StrongMysqlPass123!"
}

variable "postgres_username" {
  description = "PostgreSQL username"
  type        = string
  default     = "postgresadmin"
}

variable "postgres_password" {
  description = "PostgreSQL password"
  type        = string
  default     = "StrongPostgresPass123!"
}

variable "asset_bucket_name" {
  description = "S3 bucket name for assets"
  type        = string
  default     = "bedrock-assets-alt-soe-025-3757"
}

variable "enable_addons" {
  description = "Deploy Kubernetes addons"
  type        = bool
  default     = false
}