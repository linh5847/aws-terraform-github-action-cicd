output "subnet_id" {
  value = values(aws_subnet.subnets).*.id
}

output "subnet_arn" {
  value = values(aws_subnet.subnets)[*].arn
}

output "subnet_cidr_block" {
  value = values(aws_subnet.subnets).*.cidr_block
}

output "subnet_available_zone_id" {
  value = values(aws_subnet.subnets)[*].availability_zone_id
}