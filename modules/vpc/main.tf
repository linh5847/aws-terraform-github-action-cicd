resource "aws_vpc" "vpc" {
  count                = var.enabled == true ? 1 : 0
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = merge(
    {
      "Name" = format("%s", var.vpc_name)
    },
    var.additional_tags,
  )

  lifecycle {
    create_before_destroy = true
  }
}