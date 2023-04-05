## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_redis_cache.redis](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/redis_cache) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capacity"></a> [capacity](#input\_capacity) | The capacity of the redis cache | `number` | n/a | yes |
| <a name="input_enable_non_ssl_port"></a> [enable\_non\_ssl\_port](#input\_enable\_non\_ssl\_port) | Whether a Non SSL port should be enabled, defaults to false | `bool` | `false` | no |
| <a name="input_family"></a> [family](#input\_family) | The family of the redis cache, can either be C or P | `string` | n/a | yes |
| <a name="input_identity_ids"></a> [identity\_ids](#input\_identity\_ids) | Specifies a list of user managed identity ids to be assigned to the VM. | `list(string)` | `[]` | no |
| <a name="input_identity_type"></a> [identity\_type](#input\_identity\_type) | The Managed Service Identity Type of this Virtual Machine. | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | The location for this resource to be put in | `string` | n/a | yes |
| <a name="input_minimum_tls_version"></a> [minimum\_tls\_version](#input\_minimum\_tls\_version) | The minimum tls version of the cache, defaut is 1.2 | `string` | `"1.2"` | no |
| <a name="input_patch_schedule"></a> [patch\_schedule](#input\_patch\_schedule) | The patch schedule block if declared | `any` | `null` | no |
| <a name="input_private_static_ip_address"></a> [private\_static\_ip\_address](#input\_private\_static\_ip\_address) | Whether a static ip should be used if this redis cache is connected to a subnet | `bool` | `null` | no |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Whether the Redis can be reach by private AND public or Private only, defaults to true | `bool` | `true` | no |
| <a name="input_redis_configuration"></a> [redis\_configuration](#input\_redis\_configuration) | The redis configuration block | `any` | `null` | no |
| <a name="input_redis_name"></a> [redis\_name](#input\_redis\_name) | The name of the cache, note, must be globally unique | `string` | n/a | yes |
| <a name="input_redis_version"></a> [redis\_version](#input\_redis\_version) | The version of redis to be used, default is 6 | `number` | `6` | no |
| <a name="input_replicas_per_master"></a> [replicas\_per\_master](#input\_replicas\_per\_master) | The amount of replicas per master configured. default is null | `string` | `null` | no |
| <a name="input_replicas_per_primary"></a> [replicas\_per\_primary](#input\_replicas\_per\_primary) | The amount of replicas per primary configured. default is null | `string` | `null` | no |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | The name of the resource group, this module does not create a resource group, it is expecting the value of a resource group already exists | `string` | n/a | yes |
| <a name="input_shard_count"></a> [shard\_count](#input\_shard\_count) | The shard count if the SKU is premium | `string` | `null` | no |
| <a name="input_sku"></a> [sku](#input\_sku) | The sku of the redis cache, Basic, Standard or Premium | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The id of the subnet this redis cache is connected to | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of the tags to use on the resources that are deployed with this module. | `map(string)` | <pre>{<br>  "source": "terraform"<br>}</pre> | no |
| <a name="input_zones"></a> [zones](#input\_zones) | The zones in which a redis cache is deployed, default is null | `list(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_redis_configuration"></a> [redis\_configuration](#output\_redis\_configuration) | The configuration block of the redis cache |
| <a name="output_redis_hostname"></a> [redis\_hostname](#output\_redis\_hostname) | The hostname of the redis |
| <a name="output_redis_id"></a> [redis\_id](#output\_redis\_id) | The ID of the redis |
| <a name="output_redis_identity"></a> [redis\_identity](#output\_redis\_identity) | The identity block of the redis cache |
| <a name="output_redis_name"></a> [redis\_name](#output\_redis\_name) | The name of the redis |
| <a name="output_redis_port"></a> [redis\_port](#output\_redis\_port) | The port of the redis cache |
| <a name="output_redis_primary_access_key"></a> [redis\_primary\_access\_key](#output\_redis\_primary\_access\_key) | The primary access key of the redis |
| <a name="output_redis_primary_connection_string"></a> [redis\_primary\_connection\_string](#output\_redis\_primary\_connection\_string) | The primary blob connection string of the redis |
| <a name="output_redis_secondary_access_key"></a> [redis\_secondary\_access\_key](#output\_redis\_secondary\_access\_key) | The secondary access key of the redis |
| <a name="output_redis_secondary_connection_string"></a> [redis\_secondary\_connection\_string](#output\_redis\_secondary\_connection\_string) | The primary blob connection string of the redis |
| <a name="output_redis_ssl_port"></a> [redis\_ssl\_port](#output\_redis\_ssl\_port) | The ssl port of the redis |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_redis_cache.redis](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/redis_cache) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capacity"></a> [capacity](#input\_capacity) | The capacity of the redis cache | `number` | n/a | yes |
| <a name="input_enable_non_ssl_port"></a> [enable\_non\_ssl\_port](#input\_enable\_non\_ssl\_port) | Whether a Non SSL port should be enabled, defaults to false | `bool` | `false` | no |
| <a name="input_family"></a> [family](#input\_family) | The family of the redis cache, can either be C or P | `string` | n/a | yes |
| <a name="input_identity_ids"></a> [identity\_ids](#input\_identity\_ids) | Specifies a list of user managed identity ids to be assigned to the VM. | `list(string)` | `[]` | no |
| <a name="input_identity_type"></a> [identity\_type](#input\_identity\_type) | The Managed Service Identity Type of this Virtual Machine. | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | The location for this resource to be put in | `string` | n/a | yes |
| <a name="input_minimum_tls_version"></a> [minimum\_tls\_version](#input\_minimum\_tls\_version) | The minimum tls version of the cache, defaut is 1.2 | `string` | `"1.2"` | no |
| <a name="input_patch_schedule"></a> [patch\_schedule](#input\_patch\_schedule) | The patch schedule block if declared | `any` | `null` | no |
| <a name="input_private_static_ip_address"></a> [private\_static\_ip\_address](#input\_private\_static\_ip\_address) | Whether a static ip should be used if this redis cache is connected to a subnet | `bool` | `null` | no |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Whether the Redis can be reach by private AND public or Private only, defaults to true | `bool` | `true` | no |
| <a name="input_redis_configuration"></a> [redis\_configuration](#input\_redis\_configuration) | The redis configuration block | `any` | `null` | no |
| <a name="input_redis_name"></a> [redis\_name](#input\_redis\_name) | The name of the cache, note, must be globally unique | `string` | n/a | yes |
| <a name="input_redis_version"></a> [redis\_version](#input\_redis\_version) | The version of redis to be used, default is 6 | `number` | `6` | no |
| <a name="input_replicas_per_master"></a> [replicas\_per\_master](#input\_replicas\_per\_master) | The amount of replicas per master configured. default is null | `string` | `null` | no |
| <a name="input_replicas_per_primary"></a> [replicas\_per\_primary](#input\_replicas\_per\_primary) | The amount of replicas per primary configured. default is null | `string` | `null` | no |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | The name of the resource group, this module does not create a resource group, it is expecting the value of a resource group already exists | `string` | n/a | yes |
| <a name="input_shard_count"></a> [shard\_count](#input\_shard\_count) | The shard count if the SKU is premium | `string` | `null` | no |
| <a name="input_sku"></a> [sku](#input\_sku) | The sku of the redis cache, Basic, Standard or Premium | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The id of the subnet this redis cache is connected to | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of the tags to use on the resources that are deployed with this module. | `map(string)` | <pre>{<br>  "source": "terraform"<br>}</pre> | no |
| <a name="input_zones"></a> [zones](#input\_zones) | The zones in which a redis cache is deployed, default is null | `list(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_redis_configuration"></a> [redis\_configuration](#output\_redis\_configuration) | The configuration block of the redis cache |
| <a name="output_redis_hostname"></a> [redis\_hostname](#output\_redis\_hostname) | The hostname of the redis |
| <a name="output_redis_id"></a> [redis\_id](#output\_redis\_id) | The ID of the redis |
| <a name="output_redis_identity"></a> [redis\_identity](#output\_redis\_identity) | The identity block of the redis cache |
| <a name="output_redis_name"></a> [redis\_name](#output\_redis\_name) | The name of the redis |
| <a name="output_redis_port"></a> [redis\_port](#output\_redis\_port) | The port of the redis cache |
| <a name="output_redis_primary_access_key"></a> [redis\_primary\_access\_key](#output\_redis\_primary\_access\_key) | The primary access key of the redis |
| <a name="output_redis_primary_connection_string"></a> [redis\_primary\_connection\_string](#output\_redis\_primary\_connection\_string) | The primary blob connection string of the redis |
| <a name="output_redis_secondary_access_key"></a> [redis\_secondary\_access\_key](#output\_redis\_secondary\_access\_key) | The secondary access key of the redis |
| <a name="output_redis_secondary_connection_string"></a> [redis\_secondary\_connection\_string](#output\_redis\_secondary\_connection\_string) | The primary blob connection string of the redis |
| <a name="output_redis_ssl_port"></a> [redis\_ssl\_port](#output\_redis\_ssl\_port) | The ssl port of the redis |
