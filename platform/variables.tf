variable "api_dependency" {
  description = "A reference to the project service to ensure order"
  type        = any
}

variable "project_id" {
  description = "Main Project Id"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
}

variable "org_id" {
  description = "GCP Organization"
  type        = string
}


