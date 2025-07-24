# The Terraform Module
terraform {

  # The required tf version
  required_version = "~> 1.12"

  # Required providers
  required_providers {
    vercel = {
      source  = "vercel/vercel"
      version = "~> 3.8"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.6"
    }
  }
}
