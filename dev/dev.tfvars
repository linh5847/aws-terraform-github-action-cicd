additional_tags = {
  "Cost Centre" = "INFRA"
  Product       = "INFRA"
  Service       = "IaC"
}

config = {
  vpc = {
    enabled  = true
    vpc_name = "dev-vpc"
    vpc_cidr = "10.10.0.0/16"
  },
  checkov_log_flow = {
    enabled       = true
    log_flow_name = "dev-log-flow"
  },
  internet_gw = {
    enabled          = true
    internet_gw_name = "dev-internet-gw"
  }
}