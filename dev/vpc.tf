module "vpc" {
  source = "../modules/vpc"

  enabled         = var.config.vpc.enabled
  vpc_name        = var.config.vpc.vpc_name
  vpc_cidr        = var.config.vpc.vpc_cidr
  additional_tags = var.additional_tags
}

# AWS-Log-Flow requires for checkov = https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/logging-9-enable-vpc-flow-logging
module "checkov_log_flow" {
  source = "../modules/checkov/log_flow"

  enabled         = var.config.checkov_log_flow.enabled
  log_flow_name   = var.config.checkov_log_flow.log_flow_name
  vpc_id          = module.vpc.vpc_id
  additional_tags = var.additional_tags
}