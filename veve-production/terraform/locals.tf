locals {
  gh_org_name = "VeVe-Official"
  gh_repo_list = [
    "${local.gh_org_name}/infrastructure-aft",
    "${local.gh_org_name}/infrastructure-elasticache"
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
