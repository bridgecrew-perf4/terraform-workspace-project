resource "digitalocean_project" "this" {
  provider = digitalocean.bootstrap

  name = "248-sh"
}

resource "google_project_service" "bootstrap" {
  provider = google.bootstrap

  for_each = toset([
    "cloudbilling",
    "cloudresourcemanager",
    "iam",
  ])

  project = data.google_project.bootstrap.id
  service = "${each.key}.googleapis.com"

  disable_dependent_services = true
}

resource "google_project" "this" {
  provider = google.bootstrap

  # auto_create_network = false
  name            = "248-sh"
  org_id          = data.google_organization.this.org_id
  project_id      = "tfe-sh"
  billing_account = data.google_billing_account.this.id
}
resource "google_project_service" "this" {
  provider = google.bootstrap

  for_each = toset([
    "cloudresourcemanager",
    "cloudtrace",
    "compute",
    "container",
    "dns",
  ])

  project = google_project.this.id
  service = "${each.key}.googleapis.com"

  # disable_dependent_services = true
  disable_dependent_services = false
  disable_on_destroy         = false
}
resource "google_service_account" "this" {
  provider = google.bootstrap

  account_id = "terraform"
  project    = google_project.this.project_id
}
resource "google_project_iam_member" "this" {
  provider = google.bootstrap

  project = google_project.this.project_id
  role    = "roles/owner"
  member  = "serviceAccount:${google_service_account.this.email}"
}

resource "google_service_account_key" "this" {
  provider = google.bootstrap

  service_account_id = google_service_account.this.name
}
