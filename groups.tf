resource "aws_iam_group" "developers" {
  name = "developers"
  path = "/users/"
  arn  =
}
resource "aws_iam_group_policy" "developer_policy" {
  name  = "my_developer_policy"
  group = aws_iam_group.developers

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
