data "aws_iam_policy_document" "cloudcraft_integration" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]
    principals {
      type        = "AWS"
      identifiers = [local.cloudcraft_aws_account_id]
    }
    condition {
      test     = "StringEquals"
      variable = "sts:ExternalId"
      values   = ["a027bc9c-7932-4f0d-9aed-e6775c495933"]
    }
  }
}

resource "aws_iam_role" "cloudcraft" {
  name               = "cloudcraft-role"
  assume_role_policy = data.aws_iam_policy_document.cloudcraft_integration.json
  managed_policy_arns = [
    "arn:aws:iam::aws:policy/ReadOnlyAccess"
  ]
}
