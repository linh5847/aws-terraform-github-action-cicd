variable "additional_tags" {
  description = "add extra tags"
  type        = map(string)
  default     = {}
}

variable "environment" {
  description = "specifies an environment name"
  type        = string
  default     = "dev"
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
