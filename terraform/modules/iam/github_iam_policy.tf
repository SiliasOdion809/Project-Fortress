data "aws_iam_policy_document" "github_iam" {

  statement {

    sid = "IAMRead"

    effect = "Allow"

    actions = [
      "iam:GetRole",
      "iam:GetPolicy",
      "iam:GetPolicyVersion",
      "iam:ListAttachedRolePolicies",
      "iam:ListRolePolicies",
      "iam:GetInstanceProfile",
      "iam:ListInstanceProfilesForRole"
    ]

    resources = ["*"]
  }
}

resource "aws_iam_role_policy" "github_iam" {

  name = "${var.project_name}-github-iam"

  role = aws_iam_role.github_deployment.id

  policy = data.aws_iam_policy_document.github_iam.json
}