provider "digitalocean" {
  alias = "bootstrap"
  
  token = var.do_token
}

provider "google" {
  alias = "bootstrap"

  credentials = var.gcp_bootstrap_credentials
}
