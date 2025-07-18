# The portfolio project
resource "vercel_project" "portfolio" {
  name = "portfolio"
  #   framework = "other"

  git_repository = {
    type = "github"
    repo = "mervinhemaraju/portfolio"
  }
}
