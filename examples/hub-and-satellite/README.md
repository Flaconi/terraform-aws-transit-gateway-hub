<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tgw-hub"></a> [tgw-hub](#module\_tgw-hub) | ../../ | n/a |
| <a name="module_tgw-satellite"></a> [tgw-satellite](#module\_tgw-satellite) | github.com/Flaconi/terraform-aws-transit-gateway-satellite.git | v2.5.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attachment_subnet_filters"></a> [attachment\_subnet\_filters](#input\_attachment\_subnet\_filters) | List of maps selecting the subnet(s) where TGW will be attached | <pre>list(object({<br>    name   = string<br>    values = list(string)<br>  }))</pre> | n/a | yes |
| <a name="input_aws_account_id_hub"></a> [aws\_account\_id\_hub](#input\_aws\_account\_id\_hub) | AWS account number containing the TGW hub | `string` | n/a | yes |
| <a name="input_aws_account_id_satellite"></a> [aws\_account\_id\_satellite](#input\_aws\_account\_id\_satellite) | List of AWS account numbers representing the satellites of the TGW | `list(string)` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description of the Transit Gateway | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name to be used on all the resources as identifier | `string` | n/a | yes |
| <a name="input_role_to_assume_hub"></a> [role\_to\_assume\_hub](#input\_role\_to\_assume\_hub) | IAM role name to assume in the AWS account containing the TGW hub (eg. ASSUME-ROLE-HUB) | `string` | n/a | yes |
| <a name="input_role_to_assume_satellite"></a> [role\_to\_assume\_satellite](#input\_role\_to\_assume\_satellite) | IAM role name to assume in the AWS account containing the TGW satellite (eg. ASSUME-ROLE-SATELLITE) | `string` | n/a | yes |
| <a name="input_hub_destination_cidr_blocks"></a> [hub\_destination\_cidr\_blocks](#input\_hub\_destination\_cidr\_blocks) | List of CIDRs to be routed for the hub | `list(string)` | `[]` | no |
| <a name="input_satellite_create"></a> [satellite\_create](#input\_satellite\_create) | Boolean flag for toggling the handling of satellite resources | `bool` | `false` | no |
| <a name="input_satellite_destination_cidr_blocks"></a> [satellite\_destination\_cidr\_blocks](#input\_satellite\_destination\_cidr\_blocks) | List of CIDRs to be routed for the satellite | `list(string)` | `[]` | no |
| <a name="input_vpc_name_to_attach"></a> [vpc\_name\_to\_attach](#input\_vpc\_name\_to\_attach) | Name of the satellite VPC to be attached to the TGW | `string` | `""` | no |

## Outputs

No outputs.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
