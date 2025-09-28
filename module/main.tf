# The vercel project
resource "vercel_project" "this" {

  name                                              = var.project_name
  framework                                         = var.framework
  automatically_expose_system_environment_variables = true

  protection_bypass_for_automation        = var.protection_bypass_for_automation_secret != null
  protection_bypass_for_automation_secret = var.protection_bypass_for_automation_secret

  git_repository = {
    type = "github"
    repo = var.github_repo == null ? "mervinhemaraju/web-${var.project_name}" : var.github_repo
  }

  vercel_authentication = {
    deployment_type = var.vercel_authentication
  }
}

# Production domain (no custom environment needed)
resource "vercel_project_domain" "production" {
  for_each = { for idx, domain in var.production_domains :
    "${domain.top_domain}.${domain.domain}" => domain
  }

  project_id = vercel_project.this.id
  domain     = each.value.top_domain == each.value.domain ? each.value.domain : each.key
}

# Production domain (no custom environment needed)
resource "vercel_project_domain" "preview" {
  for_each = { for idx, domain in var.preview_domains :
    "${domain.top_domain}.${domain.domain}" => domain
  }

  project_id = vercel_project.this.id
  domain     = each.value.top_domain == each.value.domain ? each.value.domain : each.key
  git_branch = var.preview_branch
}
