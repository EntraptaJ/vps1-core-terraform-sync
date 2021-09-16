terraform {
  required_providers {
    #
    # Cloudflare Provider
    #
    # Docs: https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs
    #
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "2.26.1"
    }
  }
}

#
# Cloudflare Provider Connection
#
provider "cloudflare" { 
  api_token = var.Cloudflare.Credentials.Token
}

data "cloudflare_zones" "Core" {
  filter {
    name        = "${var.Zone}"
    status      = "active"
  }
}

# resource "cloudflare_record" "Nodes" {
#   zone_id = var.cloudflare_zone_id
#   name    = "terraform"
#   value   = "192.168.0.11"
#   type    = "A"
#   ttl     = 3600
# }