locals {
  gh_org_name = "VeVe-Official"
  gh_repo_list = [
    "${local.gh_org_name}/infrastructure-aft",
    "${local.gh_org_name}/infrastructure-elasticache",
    "${local.gh_org_name}/infrastructure-vault"
  ]
  tags = {
    Department  = "technology"
    Team        = "platform"
    Schedule    = "na"
    Tier        = "backend"
    Environment = "production"
    Stage       = "production"
  }
}
