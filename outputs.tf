output "google_project" {
  value = {
    this = google_project.this
  }
}
output "google_service_account" {
  value = {
    this = google_service_account.this
  }
}
output "google_service_account_key" {
  sensitive = true
  value = {
    this = google_service_account_key.this
  }
}
