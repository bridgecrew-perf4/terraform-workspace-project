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
    google = {
      source = "hashicorp/google"
    }
  }
  required_version = ">= 1"
}
