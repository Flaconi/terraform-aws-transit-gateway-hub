<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tgw-hub"></a> [tgw-hub](#module\_tgw-hub) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_account_id_hub"></a> [aws\_account\_id\_hub](#input\_aws\_account\_id\_hub) | AWS account number containing the TGW hub | `string` | n/a | yes |
| <a name="input_aws_account_id_satellite"></a> [aws\_account\_id\_satellite](#input\_aws\_account\_id\_satellite) | List of AWS account numbers representing the satellites of the TGW | `list(string)` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description of the Transit Gateway | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name to be used on all the resources as identifier | `string` | n/a | yes |
| <a name="input_role_to_assume_hub"></a> [role\_to\_assume\_hub](#input\_role\_to\_assume\_hub) | IAM role name to assume in the AWS account containing the TGW hub (eg. ASSUME-ROLE-HUB) | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | `{}` | no |

## Outputs

No outputs.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
