additional_tags = {
  "Cost Centre" = "INFRA"
  Product       = "INFRA"
  Service       = "IaC"
}

environment = "prod"

config = {
  vpc = {
    enabled  = true
    vpc_name = "prod-vpc"
    vpc_cidr = "10.30.0.0/16"
  }
}