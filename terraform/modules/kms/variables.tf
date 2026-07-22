variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "tags" {
  description = "Common resource tags"
  type        = map(string)
}

variable "github_deployment_role_arn" {
  description = "GitHub OIDC deployment role ARN"
  type        = string
}