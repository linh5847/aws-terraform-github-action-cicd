resource "aws_vpc" "vpc" {
  #checkov:skip=CKV2_AWS_11: no flow log is neededq
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

resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.vpc[0].id

  tags = merge(
    {
      "Name" = format("%s", "${var.vpc_name}_defaultSG")
    },
    var.additional_tags,
  )
}