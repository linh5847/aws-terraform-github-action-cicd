variable "vpc_id" {
  description = "specifies an AWS VPC-ID"
  type        = string
  default     = ""
}

variable "internet_gw_name" {
  description = "specifies an Internet-GW name"
  type        = string
  default     = ""
}

variable "additional_tags" {
  description = "Add extra tags to resource"
  type        = map(string)
  default     = {}
}