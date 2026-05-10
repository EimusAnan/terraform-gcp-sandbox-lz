
module "platform" {
  source = "./platform"

  api_dependency = google_project_service.api
}
