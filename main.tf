terraform {
  required_providers {
    #
    # Hashicorp Nomad Provider
    #
    # Docs: https://registry.terraform.io/providers/hashicorp/nomad/latest/docs
    # 
    nomad = {
      source = "hashicorp/nomad"
      version = "1.4.15"
    }

    #
    # Hashicorp Vault
    #
    # Docs: https://registry.terraform.io/providers/hashicorp/vault/latest/docs
    # 
    vault = {
      source = "hashicorp/vault"
      version = "2.24.0"
    }
  }
}

#
# Spec
#
# TOKEN
#
#
data "vault_generic_secret" "Cloudflare" {
  path = "VPS1-TF/CloudFlare"
}

module "Domains" {
  source = "./Modules/Domains"
}

#
# TODO
#

data "vault_generic_secret" "DigitalOcean" {
  path = "VPS1-TF/DigitalOcean"
}