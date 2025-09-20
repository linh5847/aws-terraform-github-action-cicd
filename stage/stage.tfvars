additional_tags = {
  "Cost Centre" = "INFRA"
  Product       = "INFRA"
  Service       = "IaC"
}

config = {
  vpc = {
    enabled  = true
    vpc_name = "stage-vpc"
    vpc_cidr = "10.20.0.0/16"
  }
}