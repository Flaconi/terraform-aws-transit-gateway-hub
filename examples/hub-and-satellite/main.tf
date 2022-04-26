module "tgw-hub" {
  source = "../../"

  providers = {
    aws = aws.hub
  }

  name        = var.name
  description = var.description

  aws_account_id_hub       = var.aws_account_id_hub
  aws_account_id_satellite = var.aws_account_id_satellite

  role_to_assume_hub = var.role_to_assume_hub
}

module "tgw-satellite" {
  source = "github.com/Flaconi/terraform-aws-transit-gateway-satellite.git?ref=v2.5.0"

  providers = {
    aws.satellite = aws.satellite
    aws.hub       = aws.hub
  }

  satellite_create = var.satellite_create

  aws_account_id_hub       = var.aws_account_id_hub
  aws_account_id_satellite = local.aws_account_id_satellite

  role_to_assume_hub       = var.role_to_assume_hub
  role_to_assume_satellite = var.role_to_assume_satellite

  vpc_name_to_attach        = var.vpc_name_to_attach
  attachment_subnet_filters = var.attachment_subnet_filters

  satellite_destination_cidr_blocks = var.satellite_destination_cidr_blocks
  hub_destination_cidr_blocks       = var.hub_destination_cidr_blocks

  transit_gateway_route_table_id = module.tgw-hub.transit_gateway_route_table_id
  transit_gateway_id             = module.tgw-hub.transit_gateway_id
  ram_resource_association_id    = module.tgw-hub.ram_resource_association_id
}
