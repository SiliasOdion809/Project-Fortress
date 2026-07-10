resource "aws_iam_role" "github_deployment" {
  name = "${var.project_name}-github-deployment-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Federated = var.github_oidc_provider_arn
        }

        Action = "sts:AssumeRoleWithWebIdentity"
      }
    ]
  })

  tags = var.tags
}