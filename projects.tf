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

# The plagueworks portfolio project
module "plagueworks" {
  source = "./module"

  project_name                            = "plagueworks"
  protection_bypass_for_automation_secret = data.doppler_secrets.apps.map.VERCEL_BYPASS_TOKEN

  production_domains = [
    {
      top_domain = "www"
      domain     = "plagueworks.org"
    },
    {
      top_domain = "plagueworks.org"
      domain     = "plagueworks.org"
    }
  ]

  preview_domains = [
    {
      top_domain = "staging"
      domain     = "plagueworks.org"
    }
  ]
}

# The a two piece story project
module "atwopiecestory" {
  source = "./module"

  project_name                            = "atwopiecestory"
  protection_bypass_for_automation_secret = data.doppler_secrets.apps.map.VERCEL_BYPASS_TOKEN

  production_domains = [
    {
      top_domain = "www"
      domain     = "atwopiecestory.com"
    },
    {
      top_domain = "atwopiecestory.com"
      domain     = "atwopiecestory.com"
    }
  ]

  preview_domains = [
    {
      top_domain = "staging"
      domain     = "atwopiecestory.com"
    }
  ]
}

# The lockme project
module "lockme" {
  source = "./module"

  project_name                            = "lockme"
  protection_bypass_for_automation_secret = data.doppler_secrets.apps.map.VERCEL_BYPASS_TOKEN

  production_domains = [
    {
      top_domain = "lockme"
      domain     = "plagueworks.org"
    }
  ]

  preview_domains = [
    {
      top_domain = "staging-lockme"
      domain     = "plagueworks.org"
    }
  ]
}
