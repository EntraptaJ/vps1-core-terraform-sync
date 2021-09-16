terraform {
  required_providers {
    #
    # DigitalOcean Provider
    #
    # Docs: https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs
    #
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.11.1"
    }
  }
}

#
# DigitalOcean Provider
#
provider "digitalocean" {
  token = var.DigitalOcean.Credentials.Token
}

#
# DigitalOcean Droplet Nodes
#
data "digitalocean_droplets" "Droplets" {
  filter {
    key    = "name"
    values = ["${var.DigitalOcean.NodeDomainName}"]

    match_by = "substring"
  }

  sort {
    key       = "name"
    direction = "asc"
  }
}

