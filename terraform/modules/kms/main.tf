resource "aws_kms_key" "project_fortress" {
  description             = "Customer managed KMS key for Project Fortress"
  deletion_window_in_days = 30
  enable_key_rotation     = true

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-${var.environment}-kms"
    }
  )
}

resource "aws_kms_alias" "project_fortress" {
  name          = "alias/${var.project_name}-${var.environment}"
  target_key_id = aws_kms_key.project_fortress.key_id
}