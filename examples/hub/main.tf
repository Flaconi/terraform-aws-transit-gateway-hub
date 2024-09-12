module "tgw-hub" {
  source = "../../"

  providers = {
    aws = aws.hub
  }

  name        = var.name
  description = var.description

  aws_account_id_hub       = var.aws_account_id_hub
  aws_account_id_satellite = [var.aws_account_id_satellite]

  allow_external_principals      = false
  auto_accept_shared_attachments = "disable"

  tags = var.tags
}
