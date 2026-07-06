output "key_id" {
  description = "KMS Key ID"
  value       = aws_kms_key.project_fortress.key_id
}

output "key_arn" {
  description = "KMS Key ARN"
  value       = aws_kms_key.project_fortress.arn
}

output "key_alias" {
  description = "KMS Key Alias"
  value       = aws_kms_alias.project_fortress.name
}