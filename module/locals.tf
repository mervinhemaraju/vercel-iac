
locals {

  # Defines a list of available domains
  available_domains = [
    "mervinhemaraju.com",
    "plagueworks.org",
    "atwopiecestory.com",
    "mervinhemaraju.qzz.io",
    "plagueworks.qzz.io",
  ]

  # Standard vercel DNS
  vercel_standard_dns = "cname.vercel-dns.com"

  # Standard comment to put on all cloudflare domains related to Vercel
  cf_dns_record_comment = "This is managed by Terraform project vercel-iac"
}
