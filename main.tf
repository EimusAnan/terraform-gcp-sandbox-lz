terraform {
  required_version = "= 1.14.9"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }

  # backend "gcs" {
  #   bucket = "poc-project-terraform-state-bucket"
  #   prefix = "terraform/state"
  # }

  cloud {
    organization = "pixemeck-org"
    workspaces {
      name = "landing-zone"
    }
  }

}

module "platform" {
  source = "./platform"

  api_dependency = google_project_service.api
}