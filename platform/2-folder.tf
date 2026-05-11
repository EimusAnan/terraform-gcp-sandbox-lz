resource "google_folder" "assured" {
  display_name        = "Assured Folder"
  parent              = var.org_id
  deletion_protection = false
}