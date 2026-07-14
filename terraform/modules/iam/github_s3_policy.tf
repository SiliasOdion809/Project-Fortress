data "aws_iam_policy_document" "github_s3" {

  statement {
    sid    = "TerraformStateBucket"
    effect = "Allow"

    actions = [
      "s3:ListBucket"
    ]

    resources = [
      "arn:aws:s3:::project-bedrock-tfstate-silias"
    ]
  }

  statement {
    sid    = "TerraformStateObjects"
    effect = "Allow"

    actions = [
      "s3:GetObject",
      "s3:PutObject",
      "s3:DeleteObject"
    ]

    resources = [
      "arn:aws:s3:::project-bedrock-tfstate-silias",
      "arn:aws:s3:::project-bedrock-tfstate-silias/*"
    ]
  }
}

resource "aws_iam_role_policy" "github_s3" {
  name = "${var.project_name}-github-deployment-policy"
  role = aws_iam_role.github_deployment.id

  policy = data.aws_iam_policy_document.github_s3.json
}