
locals {
  available_domains = [
    "mervinhemaraju.com",
    "plagueworks.org",
    "mervinhemaraju.qzz.io",
    "plagueworks.qzz.io",
  ]
  vercel_standard_dns   = "cname.vercel-dns.com"
  cf_dns_record_comment = "This is managed by Terraform project vercel-iac"
}
