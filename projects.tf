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