variable "gcp_billing_account" {
  description = "gcp billing account"
  sensitive   = true
  type        = string
}
variable "gcp_bootstrap_credentials" {
  description = "gcp bootstrap credentials"
  sensitive   = true
  type        = string
}
variable "gcp_bootstrap_project" {
  description = "gcp bootstrap project"
  sensitive   = true
  type        = string
}
variable "gcp_organization_id" {
  description = "gcp organization id"
  sensitive   = true
  type        = number
}
