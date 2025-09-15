additional_tags = {
  "Cost Centre" = "INFRA"
  Product       = "INFRA"
  Service       = "IaC"
}

environment = "dev"

config = {
  vpc = {
    enabled  = true
    vpc_name = "dev-vpc"
    vpc_cidr = "10.10.0.0/16"
  }
}