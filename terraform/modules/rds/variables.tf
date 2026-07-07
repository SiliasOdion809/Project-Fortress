variable "vpc_id" {}

variable "private_subnet_ids" {
  type = list(string)
}

variable "mysql_username" {
  default = "admin"
}

variable "mysql_password" {
  description = "MySQL password retrieved from Secrets Manager"
  type        = string
  sensitive   = true
}

variable "postgres_username" {
  default = "postgresadmin"
}

variable "postgres_password" {
  description = "PostgreSQL password retrieved from Secrets Manager"
  type        = string
  sensitive   = true
}