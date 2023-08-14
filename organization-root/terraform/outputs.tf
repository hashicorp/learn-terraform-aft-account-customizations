output "terraform_cloud_oidc_role_arn" {
  value = module.terraform_cloud_oidc.role_arn
}

output "aws_oidc_github_role_arn" {
  value = module.aws_oidc_github.iam_role_arn
}
