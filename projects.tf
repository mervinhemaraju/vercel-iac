# The portfolio project
module "portfolio" {
  source = "./module"

  project_name                            = "portfolio"
  protection_bypass_for_automation_secret = data.doppler_secrets.apps.map.VERCEL_BYPASS_TOKEN

  production_domains = [
    {
      top_domain = "www"
      domain     = "mervinhemaraju.com"
    },
    {
      top_domain = "mervinhemaraju.com"
      domain     = "mervinhemaraju.com"
    }
  ]

  preview_domains = [
    {
      top_domain = "staging"
      domain     = "mervinhemaraju.com"
    }
  ]
}

# The lockme project
module "lockme" {
  source = "./module"

  project_name                            = "lockme"
  github_repo                             = "plagueworks-org/lockme-website"
  protection_bypass_for_automation_secret = data.doppler_secrets.apps.map.VERCEL_BYPASS_TOKEN

  production_domains = [
    {
      top_domain = "lockme"
      domain     = "plagueworks.org"
    }
  ]

  preview_domains = [
    {
      top_domain = "lockme"
      domain     = "plagueworks.qzz.io"
    }
  ]
}
