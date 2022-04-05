# from do variable set
variable "do_region" {
  type = string
}
variable "do_token" {
  sensitive = true
  type      = string
}