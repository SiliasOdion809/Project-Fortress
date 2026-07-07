resource "random_password" "mysql" {
  length           = 24
  special          = true
  override_special = "!@#$%^&*()-_=+[]{}:?"
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
