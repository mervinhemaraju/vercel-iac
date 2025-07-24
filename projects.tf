# The portfolio project.
module "portfolio" {
  source                       = "./module"
  project_name                 = "portfolio"
  production_custom_top_domain = "www"
  production_custom_domain     = "mervinhemaraju.com"
  preview_custom_top_domain    = "staging"
  preview_custom_domain        = "mervinhemaraju.com"
}
