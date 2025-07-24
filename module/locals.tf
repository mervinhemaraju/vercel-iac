
locals {
  available_domains = [
    "mervinhemaraju.com",
  ]
  vercel_standard_dns   = "cname.vercel-dns.com"
  cf_dns_record_comment = "This is managed by Terraform project vercel-iac"
}
