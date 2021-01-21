provider "google" {
  alias = "bootstrap"

  credentials = var.gcp_bootstrap_credentials
}
