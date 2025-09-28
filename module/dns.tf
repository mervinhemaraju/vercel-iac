# DNS record for production
resource "cloudflare_dns_record" "production" {
  for_each = {
    for domain in var.production_domains : "${domain.top_domain}-${domain.domain}" => domain
  }

  zone_id = data.cloudflare_zones.zones[each.value.domain].result[0].id

  # Handle root domain case: if top_domain equals domain, use just the domain
  # Otherwise, concatenate top_domain.domain for subdomains
  name = each.value.top_domain == each.value.domain ? each.value.domain : "${each.value.top_domain}.${each.value.domain}"

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

  # Handle root domain case: if top_domain equals domain, use just the domain
  # Otherwise, concatenate top_domain.domain for subdomains
  name = each.value.top_domain == each.value.domain ? each.value.domain : "${each.value.top_domain}.${each.value.domain}"

  ttl     = 1
  type    = "CNAME"
  comment = local.cf_dns_record_comment
  content = local.vercel_standard_dns
  proxied = true
}
