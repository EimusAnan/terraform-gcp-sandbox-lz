
module "platform" {
  source         = "./platform"
  org_id         = "940510183197"
  project_id     = "cs-poc-wimfmwwzffpbmpliqqio4g4"
  region         = "us-central1"
  api_dependency = google_project_service.api
}
