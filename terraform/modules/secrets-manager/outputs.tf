output "mysql_secret_arn" {
  description = "ARN of the MySQL secret"
  value       = aws_secretsmanager_secret.mysql.arn
}

output "mysql_secret_id" {
  description = "ID of the MySQL secret"
  value       = aws_secretsmanager_secret.mysql.id
}

output "mysql_secret_name" {
  description = "Name of the MySQL secret"
  value       = aws_secretsmanager_secret.mysql.name
}