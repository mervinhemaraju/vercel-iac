<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.8.7 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 5.6 |
| <a name="requirement_vercel"></a> [vercel](#requirement\_vercel) | ~> 3.8 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | ~> 5.6 |
| <a name="provider_vercel"></a> [vercel](#provider\_vercel) | ~> 3.8 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_dns_record.preview](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/dns_record) | resource |
| [cloudflare_dns_record.production](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/dns_record) | resource |
| [vercel_project.this](https://registry.terraform.io/providers/vercel/vercel/latest/docs/resources/project) | resource |
| [vercel_project_domain.preview](https://registry.terraform.io/providers/vercel/vercel/latest/docs/resources/project_domain) | resource |
| [vercel_project_domain.production](https://registry.terraform.io/providers/vercel/vercel/latest/docs/resources/project_domain) | resource |
| [cloudflare_zones.zones](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/data-sources/zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_framework"></a> [framework](#input\_framework) | Framework used for the Vercel project | `string` | `null` | no |
| <a name="input_node_version"></a> [node\_version](#input\_node\_version) | Node.js version for the Vercel project | `string` | `null` | no |
| <a name="input_preview_branch"></a> [preview\_branch](#input\_preview\_branch) | The branch to use for the preview environment | `string` | `"staging"` | no |
| <a name="input_preview_domains"></a> [preview\_domains](#input\_preview\_domains) | List of preview domains | <pre>list(object({<br/>    top_domain = string<br/>    domain     = string<br/>  }))</pre> | `[]` | no |
| <a name="input_production_domains"></a> [production\_domains](#input\_production\_domains) | List of production domains | <pre>list(object({<br/>    top_domain = string<br/>    domain     = string<br/>  }))</pre> | `[]` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Name of the Vercel project | `string` | n/a | yes |
| <a name="input_protection_bypass_for_automation_secret"></a> [protection\_bypass\_for\_automation\_secret](#input\_protection\_bypass\_for\_automation\_secret) | A secret that can be used to bypass vercel authentication in automations. | `string` | `null` | no |
| <a name="input_vercel_authentication"></a> [vercel\_authentication](#input\_vercel\_authentication) | Vercel authentication type | `string` | `"standard_protection_new"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->