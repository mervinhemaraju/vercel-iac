
# * Doppler Provider for Secrets Manager
provider "doppler" {
  doppler_token = var.token_doppler_global
}

# * Vercel Provider for Infrastructure as Code
provider "vercel" {
  api_token = data.doppler_secrets.apps.map.VERCEL_PLAGUEWORKS
}

# * Cloudflare Provider for Infrastructure as Code
provider "cloudflare" {
  api_token = data.doppler_secrets.apps.map.CLOUDFLARE_TERRAFORM_TOKEN
}
