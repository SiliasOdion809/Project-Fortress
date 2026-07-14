data "aws_iam_policy_document" "github_deployment_trust" {

  statement {
    sid    = "GitHubOIDCTrust"
    effect = "Allow"

    actions = [
      "sts:AssumeRoleWithWebIdentity"
    ]

    principals {
      type = "Federated"
      identifiers = [
        var.github_oidc_provider_arn
      ]
    }

    condition {
      test     = "StringEquals"
      variable = "token.actions.githubusercontent.com:aud"

      values = [
        "sts.amazonaws.com"
      ]
    }

    condition {
      test     = "StringLike"
      variable = "token.actions.githubusercontent.com:sub"

      values = var.github_subject_patterns
    }

  }
}

resource "aws_iam_role" "github_deployment" {
  name = "${var.project_name}-github-deployment-role"

  assume_role_policy = data.aws_iam_policy_document.github_deployment_trust.json

  tags = var.tags
}
