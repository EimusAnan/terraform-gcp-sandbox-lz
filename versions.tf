terraform {
  required_version = ">= 1.0"

  cloud {
    organization = "pixemeck-org"
    workspaces {
      name = "terraform-gcp-sandbox-lz"
    }
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "< 8.0.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "< 8.0.0"
    }
  }
}
