# DNS record for production
resource "cloudflare_dns_record" "production" {
  zone_id = data.cloudflare_zones.zones[var.production_custom_domain].result[0].id
  name    = "${var.production_custom_top_domain}.${var.production_custom_domain}"
  ttl     = 1
  type    = "CNAME"
  comment = local.cf_dns_record_comment
  content = local.vercel_standard_dns
  proxied = true
}

# DNS record for preview
resource "cloudflare_dns_record" "preview" {
  zone_id = data.cloudflare_zones.zones[var.preview_custom_domain].result[0].id
  name    = "${var.preview_custom_top_domain}.${var.preview_custom_domain}"
  ttl     = 1
  type    = "CNAME"
  comment = local.cf_dns_record_comment
  content = local.vercel_standard_dns
  proxied = true
}
