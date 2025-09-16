resource "aws_internet_gateway" "gw" {
  vpc_id = var.vpc_id

  tags = merge(
    {
      "Name" = format("%s", var.internet_gw_name)
    },
    var.additional_tags,
  )
}