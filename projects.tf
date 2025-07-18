# The portfolio project
resource "vercel_project" "portfolio" {
  name = "portfolio"
  #   framework = "other"

  git_repository = {
    type = "github"
    repo = "mervinhemaraju/portfolio"
  }
}


resource "vercel_custom_environment" "staging" {
  project_id  = vercel_project.portfolio.id
  name        = "staging"
  description = "A description of the custom environment"
  branch_tracking = {
    pattern = "staging"
    type    = "equals"
  }
}

resource "vercel_project_domain" "production" {
  project_id = vercel_project.portfolio.id
  domain     = "mervinhemaraju.com"
}

# Preview domain - assigned to all other branches (preview deployments)
resource "vercel_project_domain" "preview" {
  project_id            = vercel_project.portfolio.id
  domain                = "staging.mervinhemaraju.com"
  custom_environment_id = vercel_custom_environment.staging.id
}
