variable "vpc_id" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "dynamodb_policy_arn" {
  type = string
}

variable "cluster_name" {
  type = string
  default = "project-fortress-cluster"
}

variable "github_deployment_role_arn" {
  description = "GitHub Actions deployment role ARN"
  type        = string
}

variable "cloud_admin_arn" {
  type = string
}

variable "kms_key_administrators" {
  type = list(string)
}

variable "node_min_size" {
  type    = number
  default = 2
}

variable "node_max_size" {
  type    = number
  default = 3
}

variable "node_desired_size" {
  type    = number
  default = 3
}