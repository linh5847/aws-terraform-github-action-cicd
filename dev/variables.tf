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
    internet_gw = object({
      enabled          = bool
      internet_gw_name = string
    })
  })
}
