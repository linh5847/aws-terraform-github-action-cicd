variable "additional_tags" {
  description = "add extra tags"
  type        = map(string)
  default     = {}
}

variable "config" {
  type = object({
    vpc = object({
      enabled  = bool
      vpc_name = string
      vpc_cidr = string
    }),
    checkov_log_flow = object({
      enabled       = bool
      log_flow_name = string
    }),
    internet_gw = object({
      enabled          = bool
      internet_gw_name = string
    })
  })
}
