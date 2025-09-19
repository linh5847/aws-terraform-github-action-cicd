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

# checkov requirement on github ci/cd = https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/networking-4
resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.vpc[0].id

  ingress {
    protocol  = "-1"
    self      = true
    from_port = 0
    to_port   = 0
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    {
      Name = format("%s", "default_security_group")
    },
    var.additional_tags
  )
}
