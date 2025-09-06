# The Terraform Module
terraform {

  # The required tf version
  required_version = "1.8.7"

  # Required providers
  required_providers {
    doppler = {
      source  = "DopplerHQ/doppler"
      version = "~> 1"
    }

    vercel = {
      source  = "vercel/vercel"
      version = "~> 3.12"
    }

    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.9"
    }
  }
}
