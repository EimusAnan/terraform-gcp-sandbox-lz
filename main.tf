
module "platform" {
  source         = "./platform"
  org_id         = "940510183197"
  project_id     = locals.project_id
  region         = locals.region
  api_dependency = google_project_service.api
}
