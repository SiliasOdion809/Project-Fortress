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
  default = "project-bedrock-cluster"
}