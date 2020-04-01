locals {
  ram_principal = var.aws_account_id_satellite

  tags = {
    Name                 = var.name
    transit-gateway-id   = aws_ec2_transit_gateway.this.id
    transit-gateway-name = var.name
  }
}
