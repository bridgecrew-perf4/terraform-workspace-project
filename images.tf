resource "digitalocean_container_registry" "app_id" {
  provider = digitalocean.bootstrap

  name                   = "app-id"
  subscription_tier_slug = "basic"
}
