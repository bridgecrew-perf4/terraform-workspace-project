output "digitalocean_container_registry" {
  value = {
    app_id = digitalocean_container_registry.app_id
  }
}
output "digitalocean_project" {
  value = {
    this = digitalocean_project.this
  }
}
output "digitalocean_token" {
  sensitive = true
  value     = var.do_token
}

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
