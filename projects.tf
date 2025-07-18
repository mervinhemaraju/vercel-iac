# The portfolio project
resource "vercel_project" "portfolio" {
  name = "portfolio"
  #   framework = "other"

  git_repository = {
    type = "github"
    repo = "mervinhemaraju/portfolio"
  }
}


resource "vercel_project_domain" "production" {
  project_id = vercel_project.portfolio.id
  domain     = "mervinhemaraju.com"
}

resource "vercel_project_domain" "preview" {
  project_id = vercel_project.portfolio.id
  domain     = "staging.mervinhemaraju.com"
  git_branch = "staging"
}
