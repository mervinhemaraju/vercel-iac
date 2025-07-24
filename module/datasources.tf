# Create data sources for all available domains
data "cloudflare_zones" "zones" {
  for_each = toset(local.available_domains)
  name     = each.value
}
