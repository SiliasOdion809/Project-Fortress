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

variable "environment_parameter_arn" {
  description = "ARN of the SSM parameter for the environment"
  type        = string
}

variable "assets_bucket_parameter_arn" {
  description = "ARN of the SSM parameter for the assets bucket"
  type        = string
}