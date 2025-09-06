variable "project_name" {
  description = "Name of the Vercel project"
  type        = string
}

variable "github_repo" {
  description = "The GitHub repository for the Vercel project"
  type        = string
  default     = null
}

variable "framework" {
  description = "Framework used for the Vercel project"
  type        = string
  default     = null
}

variable "node_version" {
  description = "Node.js version for the Vercel project"
  type        = string
  default     = null
}

variable "vercel_authentication" {
  description = "Vercel authentication type"
  type        = string
  default     = "standard_protection_new"
}

variable "preview_branch" {
  description = "The branch to use for the preview environment"
  type        = string
  default     = "staging"
}

variable "production_domains" {
  description = "List of production domains"
  type = list(object({
    top_domain = string
    domain     = string
  }))

  default = []
}

variable "preview_domains" {
  description = "List of preview domains"
  type = list(object({
    top_domain = string
    domain     = string
  }))

  default = []
}

variable "protection_bypass_for_automation_secret" {
  description = "A secret that can be used to bypass vercel authentication in automations."
  type        = string
  default     = null
}
