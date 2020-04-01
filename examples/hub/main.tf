module "tgw-hub" {
  source = "../../"

  providers = {
    aws = aws.hub
  }

  name        = var.name
  description = var.description

  aws_login_profile = var.aws_login_profile

  aws_account_id_hub       = var.aws_account_id_hub
  aws_account_id_satellite = var.aws_account_id_satellite

  role_to_assume_hub = var.role_to_assume_hub

  tags = var.tags
}
