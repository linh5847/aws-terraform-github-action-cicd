variable "subnet_cidr" {
  description = "specifies a list of subnet-CIDR"
  type        = list(string)
  default     = []
}

variable "subnet_name" {
  description = "specifies a subnet name"
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "specifies an AWS VPC ID"
  type        = string
  default     = ""
}

variable "map_public_ip_on_launch" {
  description = "specifies whether you want a public ip or not"
  type        = bool
  default     = false
}

variable "additional_tags" {
  description = "Add extra tags to resource"
  type        = map(string)
  default     = {}
}