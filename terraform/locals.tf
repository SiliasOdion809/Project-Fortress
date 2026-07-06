locals {
  project = {
    name        = var.project_name
    environment = var.environment
    repository  = "project-fortress"
    managed_by  = "Terraform"
    owner       = "Silias Odion"
    platform    = "AWS"
  }

  common_tags = {
    Project     = local.project.name
    Environment = local.project.environment
    ManagedBy   = local.project.managed_by
    Owner       = local.project.owner
    Repository  = local.project.repository
    Platform    = local.project.platform
  }
}