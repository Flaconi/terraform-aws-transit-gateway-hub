provider "aws" {
  alias   = "hub"
  region  = "eu-central-1"
  profile = var.aws_login_profile
  assume_role {
    role_arn     = "arn:aws:iam::${var.aws_account_id_hub}:role/${var.role_to_assume_hub}"
    session_name = "tf-tgw-module-hub"
  }
}
