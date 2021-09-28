resource "aws_ec2_transit_gateway" "this" {
  description = var.description

  default_route_table_association = var.default_route_table_association
  default_route_table_propagation = var.default_route_table_propagation
  auto_accept_shared_attachments  = "enable"

  tags = merge(var.tags, { "Name" = var.name })
}

resource "aws_ec2_transit_gateway_route_table" "this" {
  transit_gateway_id = aws_ec2_transit_gateway.this.id

  tags = merge(var.tags, local.tags)
}

resource "aws_ram_resource_share" "this" {
  name = var.name

  allow_external_principals = false

  tags = merge(var.tags, local.tags)

  depends_on = [aws_ec2_transit_gateway.this]
}

resource "aws_ram_resource_association" "this" {
  resource_arn       = aws_ec2_transit_gateway.this.arn
  resource_share_arn = aws_ram_resource_share.this.id
}

resource "aws_ram_principal_association" "this" {
  count              = length(local.ram_principal)
  principal          = element(local.ram_principal, count.index)
  resource_share_arn = aws_ram_resource_share.this.arn

  depends_on = [aws_ram_resource_share.this]
}
