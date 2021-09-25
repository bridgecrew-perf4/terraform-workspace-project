resource "digitalocean_container_registry" "app_auth" {
  provider = digitalocean.bootstrap

  name                   = "app-auth"
  subscription_tier_slug = "basic"
}
