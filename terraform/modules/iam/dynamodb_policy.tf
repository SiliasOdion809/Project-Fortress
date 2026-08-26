resource "aws_iam_policy" "dynamodb_access" {
  name = "fortress-dynamodb-access"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "dynamodb:GetItem",
          "dynamodb:PutItem",
          "dynamodb:UpdateItem",
          "dynamodb:DeleteItem",
          "dynamodb:Query",
          "dynamodb:Scan"
        ]
        Resource = [
          "arn:aws:dynamodb:us-east-1:561876735341:table/fortress-orders",
          "arn:aws:dynamodb:us-east-1:561876735341:table/fortress-orders/*"
        ]
      }
    ]
  })
}
