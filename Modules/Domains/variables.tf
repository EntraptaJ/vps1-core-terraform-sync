variable "Cloudflare" {
  type = object({
    Credentials = object({
      Token = string
    })
  })

  sensitive = true

  description = "Cloudflare Access Credentials"
}

variable "Zone" {
  type = string

  description = "Cloudflare Zone to use"
}

variable "Domain" {
  type = string

  description = "Domain for the cluster"
}

variable "Nodes" {
  type = map(
    object({
      hostname = string
    }
  ))
}