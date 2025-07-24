variable "project_name" {
  description = "Name of the Vercel project"
  type        = string
}

variable "vercel_authentication" {
  description = "Vercel authentication type"
  type        = string
  default     = "none"
}

variable "preview_branch" {
  description = "The branch to use for the preview environment"
  type        = string
  default     = "staging"
}

variable "production_custom_domain" {
  description = "The custom domain for the production environment"
  type        = string
}

variable "production_custom_top_domain" {
  description = "The top domain (subdomain) for the production environment"
  type        = string
}

variable "preview_custom_domain" {
  description = "The custom domain for the preview environment"
  type        = string
}

variable "preview_custom_top_domain" {
  description = "The top domain (subdomain) for the preview environment"
  type        = string
}
