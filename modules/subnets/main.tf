data "aws_availability_zones" "avail" {}

resource "aws_subnet" "subnets" {
  for_each = {
    for v, subnet in var.subnet_cidr : v => subnet
  }
  vpc_id                  = var.vpc_id
  cidr_block              = each.value
  map_public_ip_on_launch = var.map_public_ip_on_launch
  availability_zone       = element(data.aws_availability_zones.avail.names, each.key)

  tags = merge(
    {
      "Name" = format("%s%d", var.subnet_name, each.key + 1)
    },
    var.additional_tags,
  )
}