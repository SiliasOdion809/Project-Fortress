variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "lambda_function_name" {
  description = "Lambda function name"
  type        = string
}

variable "dashboard_name" {
  description = "CloudWatch dashboard name"
  type        = string
  default     = "project-fortress-observability"
}

variable "sns_topic_arn" {
  description = "ARN of the SNS topic used for CloudWatch alarm notifications"
  type        = string
}