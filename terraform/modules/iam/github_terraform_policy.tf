data "aws_iam_policy_document" "github_terraform_permissions" {

  #
  # S3 Backend
  #
  statement {
    sid    = "TerraformStateBucket"

    effect = "Allow"

    actions = [
      "s3:ListBucket"
    ]

    resources = [
      "arn:aws:s3:::${var.terraform_state_bucket_name}"
    ]
  }

  statement {
    sid    = "TerraformStateObjects"

    effect = "Allow"

    actions = [
      "s3:GetObject",
      "s3:PutObject",
      "s3:DeleteObject",
      "s3:GetObjectVersion"
    ]

    resources = [
      "arn:aws:s3:::${var.terraform_state_bucket_name}/*"
    ]
  }

  #
  # General S3
  #
  statement {

    sid = "S3"

    effect = "Allow"

    actions = [
      "s3:GetBucketLocation",
      "s3:GetBucketPolicy",
      "s3:GetBucketVersioning",
      "s3:GetBucketCors",
      "s3:GetBucketTagging",
      "s3:GetBucketPublicAccessBlock",
      "s3:PutBucketPublicAccessBlock",
      "s3:GetEncryptionConfiguration",
      "s3:GetBucketRequestPayment",

      "s3:PutBucketEncryption",
      "s3:CreateBucket",
      "s3:DeleteBucket",
      "s3:ListBucket",
      "s3:GetObject",
      "s3:PutObject",
      "s3:DeleteObject",
      "s3:GetBucketAcl",
      "s3:GetBucketWebsite",
      "s3:GetAccelerateConfiguration"
    ]

    resources = ["*"]
  }

  #
  # EC2
  #
  statement {

    sid = "EC2"

    effect = "Allow"

    actions = [
      "ec2:*"
    ]

    resources = ["*"]
  }

  #
  # IAM
  #
  statement {

    sid = "IAM"

    effect = "Allow"

    actions = [
      "iam:*"
    ]

    resources = ["*"]
  }

  #
  # EKS
  #
  statement {

    sid = "EKS"

    effect = "Allow"

    actions = [
      "eks:*"
    ]

    resources = ["*"]
  }

  #
  # ECR
  #
  statement {

    sid = "ECR"

    effect = "Allow"

    actions = [
      "ecr:*"
    ]

    resources = ["*"]
  }

  #
  # Lambda
  #
  statement {

    sid = "Lambda"

    effect = "Allow"

    actions = [
      "lambda:*"
    ]

    resources = ["*"]
  }

  #
  # CloudWatch Logs
  #
  statement {

    sid = "CloudWatchLogs"

    effect = "Allow"

    actions = [
      "logs:*"
    ]

    resources = ["*"]
  }

  #
  # CloudWatch
  #
  statement {

    sid = "CloudWatch"

    effect = "Allow"

    actions = [
      "cloudwatch:*"
    ]

    resources = ["*"]
  }

  #
  # DynamoDB
  #
  statement {

    sid = "DynamoDB"

    effect = "Allow"

    actions = [
      "dynamodb:*"
    ]

    resources = ["*"]
  }

  #
  # KMS
  #
  statement {

    sid = "KMS"

    effect = "Allow"

    actions = [
      "kms:*"
    ]

    resources = ["*"]
  }

  #
  # Secrets Manager
  #
  statement {

    sid = "SecretsManager"

    effect = "Allow"

    actions = [
      "secretsmanager:*"
    ]

    resources = ["*"]
  }

  #
  # SSM
  #
  statement {

    sid = "SSM"

    effect = "Allow"

    actions = [
      "ssm:*"
    ]

    resources = ["*"]
  }

  #
  # STS
  #
  statement {

    sid = "STS"

    effect = "Allow"

    actions = [
      "sts:GetCallerIdentity"
    ]

    resources = ["*"]
  }

  #
  # RDS
  #
  statement {
    sid    = "RDS"

    effect = "Allow"

    actions = [
      "rds:DescribeDBSubnetGroups",
      "rds:Describe*",
      "rds:ListTagsForResource"
    ]

    resources = ["*"]
  }
}


resource "aws_iam_policy" "github_terraform_permissions" {

  name        = "${var.project_name}-github-terraform-policy"
  description = "Policy for GitHub Actions to manage Terraform resources"

  policy = data.aws_iam_policy_document.github_terraform_permissions.json

  tags = var.tags
}

resource "aws_iam_role_policy_attachment" "github_terraform_permissions_attachment" {

  role       = aws_iam_role.github_deployment.name
  policy_arn = aws_iam_policy.github_terraform_permissions.arn
}
