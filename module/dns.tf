# # DNS record for production
# resource "cloudflare_dns_record" "production" {
#   zone_id = data.cloudflare_zones.zones[var.production_custom_domain].result[0].id
#   name    = "${var.production_custom_top_domain}.${var.production_custom_domain}"
#   ttl     = 1
#   type    = "CNAME"
#   comment = local.cf_dns_record_comment
#   content = local.vercel_standard_dns
#   proxied = true
# }

# # DNS record for production
# resource "cloudflare_dns_record" "production_root_redirect" {
#   count   = var.add_root_redirect ? 1 : 0
#   zone_id = data.cloudflare_zones.zones[var.production_custom_domain].result[0].id
#   name    = var.production_custom_domain
#   ttl     = 1
#   type    = "CNAME"
#   comment = local.cf_dns_record_comment
#   content = local.vercel_standard_dns
#   proxied = true
# }

# # DNS record for preview
# resource "cloudflare_dns_record" "preview" {
#   zone_id = data.cloudflare_zones.zones[var.preview_custom_domain].result[0].id
#   name    = "${var.preview_custom_top_domain}.${var.preview_custom_domain}"
#   ttl     = 1
#   type    = "CNAME"
#   comment = local.cf_dns_record_comment
#   content = local.vercel_standard_dns
#   proxied = true
# }

# DNS record for production
resource "cloudflare_dns_record" "production" {
  for_each = {
    for domain in var.production_domains : "${domain.top_domain}-${domain.domain}" => domain
  }

  zone_id = data.cloudflare_zones.zones[each.value.domain].result[0].id
  name    = "${each.value.top_domain}.${each.value.domain}"
  ttl     = 1
  type    = "CNAME"
  comment = local.cf_dns_record_comment
  content = local.vercel_standard_dns
  proxied = true
}

# Create DNS records for preview
resource "cloudflare_dns_record" "preview" {
  for_each = {
    for domain in var.preview_domains : "${domain.top_domain}-${domain.domain}" => domain
  }

  zone_id = data.cloudflare_zones.zones[each.value.domain].result[0].id
  name    = "${each.value.top_domain}.${each.value.domain}"
  ttl     = 1
  type    = "CNAME"
  comment = local.cf_dns_record_comment
  content = local.vercel_standard_dns
  proxied = true
}
