module "internet-gateway" {
  depends_on = [module.vpc]
  source     = "../modules/internet_gw"

  enabled          = var.config.internet_gw.enabled
  vpc_id           = module.vpc.vpc_id
  internet_gw_name = var.config.internet_gw.internet_gw_name

  additional_tags = var.additional_tags
}