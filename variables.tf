variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
}

variable "description" {
  description = "Description of the Transit Gateway"
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "default_route_table_association" {
  description = "Boolean flag for toggling the default route table association"
  type        = string
  default     = "disable"
}

variable "default_route_table_propagation" {
  description = "Boolean flag for toggling the propagation of routes in the default route table"
  type        = string
  default     = "disable"
}

variable "aws_account_id_satellite" {
  description = "List of AWS account numbers representing the satellites of the TGW"
  type        = list(string)
}

variable "aws_account_id_hub" {
  description = "AWS account number containing the TGW hub"
  type        = string
}

variable "role_to_assume_hub" {
  description = "IAM role name to assume in the AWS account containing the TGW hub (eg. ASSUME-ROLE-HUB)"
  type        = string
}
