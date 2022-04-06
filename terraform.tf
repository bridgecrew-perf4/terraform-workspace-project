terraform {
  backend "remote" {
    organization = "248-sh"

    workspaces {
      name = "workspace-project"
    }
  }
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
  required_version = ">= 1"
}
