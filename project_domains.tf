resource "vercel_project_domain" "production" {
  project_id = vercel_project.portfolio.id
  domain     = "mervinhemaraju.com"
  #   team_id    = var.team_id
}

# Preview domain - assigned to all other branches (preview deployments)
resource "vercel_project_domain" "preview" {
  project_id = vercel_project.portfolio.id
  domain     = "staging.mervinhemaraju.com"
}
