terraform {
  required_version = "~> 1.5.2"
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "korosuke613"
    workspaces {
      name = "terraform-cloudflare"
    }
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}
