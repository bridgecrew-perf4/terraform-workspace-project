terraform {
  backend "remote" {
    organization = "248-sh"

    workspaces {
      name = "workspace-project"
    }
  }
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
  required_version = ">= 0.14"
}
