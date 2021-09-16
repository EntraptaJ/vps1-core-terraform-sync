variable "DigitalOcean" {
  type = object({
    Credentials = object({
      Token = string
    })

    NodeDomainName = string
  })

  sensitive = true

  description = "DigitalOcean Access Credentials"
}
