variable "enabled" {
  description = "specifies whether to create this resource or not"
  type        = bool
  default     = false
}

variable "log_flow_name" {
  description = "specifies a log-flow name ie s3"
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "specifies an AWS VPC-ID"
  type        = string
  default     = ""
}

variable "additional_tags" {
  description = "Add extra tags"
  type        = map(string)
  default     = {}
}