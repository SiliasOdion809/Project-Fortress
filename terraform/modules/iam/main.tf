resource "aws_iam_role" "lambda_role" {
  name = "bedrock-asset-processor-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Service = "lambda.amazonaws.com"
        }

        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_user" "bedrock_dev_view" {
  name = "bedrock-dev-view"

  tags = {
    Project = "karatu-2025-capstone"
  }
}

resource "aws_iam_user_policy_attachment" "readonly" {
  user = aws_iam_user.bedrock_dev_view.name

  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

resource "aws_iam_user_policy" "bedrock_dev_s3_upload" {
  name = "bedrock-dev-s3-upload"
  user = aws_iam_user.bedrock_dev_view.name

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "s3:PutObject"
        ]

        Resource = [
          "${var.assets_bucket_arn}/*"
        ]
      }
    ]
  })
}

data "aws_iam_policy_document" "lambda_cloudwatch_logs" {
  statement {
    sid    = "CreateLogGroup"
    effect = "Allow"

    actions = [
      "logs:CreateLogGroup"
    ]

    resources = ["*"]
  }

  statement {
    sid    = "WriteLogs"
    effect = "Allow"

    actions = [
      "logs:CreateLogStream",
      "logs:PutLogEvents"
    ]

    resources = [
      "arn:aws:logs:*:*:log-group:/aws/lambda/project-fortress-*:*"
    ]
  }
}

resource "aws_iam_policy" "lambda_cloudwatch_logs" {
  name        = "project-fortress-lambda-cloudwatch-logs"
  description = "Customer-managed CloudWatch Logs policy for Project Fortress Lambda functions"

  policy = data.aws_iam_policy_document.lambda_cloudwatch_logs.json
}

resource "aws_iam_role_policy_attachment" "lambda_cloudwatch_logs" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = aws_iam_policy.lambda_cloudwatch_logs.arn
}

data "aws_iam_policy_document" "lambda_mysql_secret" {
  statement {
    sid    = "ReadMySQLSecret"
    effect = "Allow"

    actions = [
      "secretsmanager:GetSecretValue"
    ]

    resources = [
      var.mysql_secret_arn
    ]
  }
}

resource "aws_iam_policy" "lambda_mysql_secret" {
  name        = "project-fortress-lambda-mysql-secret"
  description = "Allow Lambda to retrieve the MySQL secret from AWS Secrets Manager"

  policy = data.aws_iam_policy_document.lambda_mysql_secret.json
}