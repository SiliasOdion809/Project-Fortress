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