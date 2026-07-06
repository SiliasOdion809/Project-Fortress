resource "random_password" "mysql" {
  length           = 24
  special          = true
  override_special = "!@#$%^&*()-_=+[]{}<>?"
}