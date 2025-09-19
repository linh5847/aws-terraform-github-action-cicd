module "vpc" {
  source = "../modules/vpc"

  enabled         = var.config.vpc.enabled
  vpc_name        = var.config.vpc.vpc_name
  vpc_cidr        = var.config.vpc.vpc_cidr
  additional_tags = var.additional_tags
}