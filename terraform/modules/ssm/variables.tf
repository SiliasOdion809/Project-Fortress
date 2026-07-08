variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "parameters" {
  description = "Map of SSM parameters to create"
  type        = map(string)
}

variable "tags" {
  description = "Common resource tags"
  type        = map(string)
}