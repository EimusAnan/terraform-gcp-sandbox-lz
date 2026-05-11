
module "platform" {
  source         = "./platform"
  org_id         = "940510183197"
  project_id     = local.project_id
  region         = local.region
  api_dependency = google_project_service.api
}
