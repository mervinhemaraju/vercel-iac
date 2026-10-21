# Fetch secrets from Doppler secrets manager
data "doppler_secrets" "apps" {
  project = "apps-creds"
}

# Fetch Cloudflare token secrets
data "doppler_secrets" "cloudflare_creds" {
  project = "cloudflare-creds"
}