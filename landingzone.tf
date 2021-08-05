module "landing_zone" {
  source  = "MitocGroup/landing-zone/aws"
  version = "0.2.4"
  landing_zone_providers  = var.landing_zone_providers
  landing_zone_components = var.landing_zone_components
  terraform_backend       = var.terraform_backend
}
