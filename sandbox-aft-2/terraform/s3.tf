data "aws_caller_identity" "current" {}

resource "aws_s3_account_public_access_block" "this" {
  account_id              = data.aws_caller_identity.current.account_id
  block_public_acls       = true
  block_public_policy     = true
  restrict_public_buckets = true
}
