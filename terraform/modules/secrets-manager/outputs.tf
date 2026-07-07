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

output "mysql_password" {
  description = "Generated MySQL password"
  value       = random_password.mysql.result
  sensitive   = true
}

output "postgres_secret_arn" {
  description = "ARN of the PostgreSQL secret"
  value       = aws_secretsmanager_secret.postgres.arn
}

output "postgres_secret_id" {
  description = "ID of the PostgreSQL secret"
  value       = aws_secretsmanager_secret.postgres.id
}

output "postgres_secret_name" {
  description = "Name of the PostgreSQL secret"
  value       = aws_secretsmanager_secret.postgres.name
}

output "postgres_password" {
  description = "Generated PostgreSQL password"
  value       = random_password.postgres.result
  sensitive   = true
}