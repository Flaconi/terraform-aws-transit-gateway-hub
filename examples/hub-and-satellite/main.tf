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
}

module "tgw-satellite" {
  source = "github.com/flaconi/terraform-aws-transit-gateway-satellite.git?ref=vpc-attachment-by-name"

  providers = {
    aws.satellite = aws.satellite
    aws.hub       = aws.hub
  }

  aws_login_profile = var.aws_login_profile
  satellite_create  = var.satellite_create

  aws_account_id_hub       = var.aws_account_id_hub
  aws_account_id_satellite = local.aws_account_id_satellite

  role_to_assume_hub       = var.role_to_assume_hub
  role_to_assume_satellite = var.role_to_assume_satellite

  vpc_name_to_attach     = var.vpc_name_to_attach
  destination_cidr_block = var.destination_cidr_block

  subnet_name_keyword_selector = var.subnet_name_keyword_selector

  transit_gateway_route_table_id = module.tgw-hub.transit_gateway_route_table_id
  transit_gateway_id             = module.tgw-hub.transit_gateway_id
  ram_resource_association_id    = module.tgw-hub.ram_resource_association_id
}
