output "transit_gateway_arn" {
  description = "ARN of the Transit Gateway"
  value       = element(concat(aws_ec2_transit_gateway.this.*.arn, tolist([])), 0)
}

output "transit_gateway_id" {
  description = "Identifier of the Transit Gateway"
  value       = element(concat(aws_ec2_transit_gateway.this.*.id, tolist([])), 0)
}

output "transit_gateway_route_table_id" {
  description = "Identifier of the Transit Gateway Route Table"
  value       = element(concat(aws_ec2_transit_gateway_route_table.this.*.id, tolist([])), 0)
}

output "ram_resource_share_arn" {
  description = "ARN of the Resource Access Manager Resource Share"
  value       = element(concat(aws_ram_resource_share.this.*.arn, tolist([])), 0)
}

output "ram_resource_share_id" {
  description = "Identifier of the Resource Access Manager Resource Share"
  value       = element(concat(aws_ram_resource_share.this.*.id, tolist([])), 0)
}

output "ram_principal_association_id" {
  description = "Identifier of the Resource Access Manager Principal Association"
  value       = element(concat(aws_ram_principal_association.this.*.id, tolist([])), 0)
}

output "ram_resource_association_id" {
  description = "Identifier of the Resource Access Manager Resource Association"
  value       = element(concat(aws_ram_resource_association.this.*.id, tolist([])), 0)
}
