# Terraform Transit Gateway "hub" module

We are following the hub-spoke(s) (aka [star network][1]) network topology
model.

This Terraform module aims to handle the AWS resources required by a so-called
"hub" node.

This module assumes that its pair module was used:
[terraform-aws-transit-gateway-satellite][2] to handle the satellite(s).

Check out some use cases in the [examples][3].

## Assumptions

### Credentials

See [this example][4] to first make sure that the credentials you want to use
allow for cross-account actions.

You can read more about how Terraform handles this [here][5].

Obviously, all the [supported authentication][6] methods can also be used.
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.2 |
| aws | ~> 4.27.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 4.27.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_account\_id\_hub | AWS account number containing the TGW hub | `string` | n/a | yes |
| aws\_account\_id\_satellite | List of AWS account numbers representing the satellites of the TGW | `list(any)` | n/a | yes |
| name | Name to be used on all the resources as identifier | `string` | n/a | yes |
| role\_to\_assume\_hub | IAM role name to assume in the AWS account containing the TGW hub (eg. ASSUME-ROLE-HUB) | `string` | n/a | yes |
| default\_route\_table\_association | Boolean flag for toggling the default route table association | `string` | `"disable"` | no |
| default\_route\_table\_propagation | Boolean flag for toggling the propagation of routes in the default route table | `string` | `"disable"` | no |
| description | Description of the Transit Gateway | `string` | `null` | no |
| tags | A map of tags to add to all resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| ram\_principal\_association\_id | Identifier of the Resource Access Manager Principal Association |
| ram\_resource\_association\_id | Identifier of the Resource Access Manager Resource Association |
| ram\_resource\_share\_arn | ARN of the Resource Access Manager Resource Share |
| ram\_resource\_share\_id | Identifier of the Resource Access Manager Resource Share |
| transit\_gateway\_arn | ARN of the Transit Gateway |
| transit\_gateway\_id | Identifier of the Transit Gateway |
| transit\_gateway\_route\_table\_id | Identifier of the Transit Gateway Route Table |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

[1]: https://en.wikipedia.org/wiki/Star_network
[2]: https://github.com/Flaconi/terraform-aws-transit-gateway-satellite
[3]: https://github.com/Flaconi/terraform-aws-transit-gateway-hub/tree/master/examples
[4]: https://docs.aws.amazon.com/cli/latest/reference/sts/assume-role.html#examples
[5]: https://www.terraform.io/docs/configuration/modules.html#passing-providers-explicitly
[6]: https://www.terraform.io/docs/providers/aws/index.html#authentication
