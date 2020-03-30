variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
}

variable "description" {
  description = "Description of the Transit Gateway"
  type        = string
}

variable "aws_account_id_hub" {
  description = "AWS account number containing the TGW hub"
  type        = string
}

variable "aws_login_profile" {
  description = "Name of the AWS login profile as seen under ~/.aws/config used for assuming cross-account roles"
}

variable "role_to_assume_hub" {
  description = "IAM role name to assume in the AWS account containing the TGW hub (eg. ASSUME-ROLE-HUB)"
  type        = string
}

variable "aws_account_id_satellite" {
  description = "List of AWS account numbers representing the satellites of the TGW"
  type        = list
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
