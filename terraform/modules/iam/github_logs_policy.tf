data "aws_iam_policy_document" "github_logs" {

  statement {

    sid = "CloudWatchRead"

    effect = "Allow"

    actions = [
      "logs:DescribeLogGroups",
      "logs:DescribeLogStreams",
      "logs:GetLogEvents"
    ]

    resources = ["*"]
  }
}

resource "aws_iam_role_policy" "github_logs" {

  name = "${var.project_name}-github-logs"

  role = aws_iam_role.github_deployment.id

  policy = data.aws_iam_policy_document.github_logs.json
}