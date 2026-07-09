output "parameter_names" {
  description = "Map of SSM parameter names"

  value = {
    for key, parameter in aws_ssm_parameter.parameters :
    key => parameter.name
  }
}

output "parameter_arns" {
  description = "Map of SSM parameter ARNs"

  value = {
    for key, parameter in aws_ssm_parameter.parameters :
    key => parameter.arn
  }
}

output "environment_parameter_arn" {
  description = "ARN of the environment parameter"
  value       = aws_ssm_parameter.environment.arn
}

output "assets_bucket_parameter_arn" {
  description = "ARN of the assets bucket parameter"
  value       = aws_ssm_parameter.assets_bucket.arn
}