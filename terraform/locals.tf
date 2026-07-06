locals {
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    Owner       = "Silias Adodo"
    Repository  = "Project-fortress"
    Platform    = "AWS"
  }
}