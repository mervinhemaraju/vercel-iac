# The vercel project
resource "vercel_project" "this" {
  name = var.project_name

  skew_protection = true

  git_repository = {
    type = "github"
    repo = "mervinhemaraju/${var.project_name}"
  }

  vercel_authentication = {
    deployment_type = var.vercel_authentication
  }
}

# Production domain (no custom environment needed)
resource "vercel_project_domain" "production" {
  project_id = vercel_project.this.id
  domain     = "${var.production_custom_top_domain}.${var.production_custom_domain}"
}

# Preview domain (no custom environment needed)
resource "vercel_project_domain" "preview" {
  project_id = vercel_project.this.id
  domain     = "${var.preview_custom_top_domain}.${var.preview_custom_domain}"
  git_branch = var.preview_branch
}
