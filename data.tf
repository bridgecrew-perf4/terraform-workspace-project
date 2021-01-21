data "google_organization" "this" {
  provider = google.bootstrap

  organization = var.gcp_organization_id
}

data "google_billing_account" "this" {
  provider = google.bootstrap

  billing_account = var.gcp_billing_account
  open            = true

  depends_on = [
    google_project_service.bootstrap,
  ]
}

data "google_project" "bootstrap" {
  provider = google.bootstrap

  project_id = var.gcp_bootstrap_project
}

data "google_service_account" "bootstrap" {
  provider = google.bootstrap

  account_id = "terraform"
  project    = data.google_project.bootstrap.id
}
