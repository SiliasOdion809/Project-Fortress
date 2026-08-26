resource "random_password" "mysql" {
  length           = 24
  special          = true
  override_special = "!#%^&*-_"
}

resource "random_password" "postgres" {
  length           = 24
  special          = true
  override_special = "!#$%^&*()-_=+[]{}<>?"
}

resource "aws_secretsmanager_secret" "mysql" {
  name        = "${var.project_name}/${var.environment}/mysql"
  description = "MySQL database credentials"

  kms_key_id = var.kms_key_arn

  recovery_window_in_days = 30

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-${var.environment}-mysql-secret"
    }
  )
}

resource "aws_secretsmanager_secret_version" "mysql" {
  secret_id = aws_secretsmanager_secret.mysql.id

  secret_string = jsonencode({
    username = var.mysql_username
    password = random_password.mysql.result
  })
}

resource "aws_secretsmanager_secret" "postgres" {
  name        = "${var.project_name}/${var.environment}/postgres"
  description = "PostgreSQL database credentials"

  kms_key_id = var.kms_key_arn

  recovery_window_in_days = 30

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-${var.environment}-postgres-secret"
    }
  )
}

resource "aws_secretsmanager_secret_version" "postgres" {
  secret_id = aws_secretsmanager_secret.postgres.id

  secret_string = jsonencode({
    username = var.postgres_username
    password = random_password.postgres.result
  })
}