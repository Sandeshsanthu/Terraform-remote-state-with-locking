# CI/CD service account needs full read/write for apply operations
resource "google_storage_bucket_iam_member" "cicd_admin" {
  bucket = "santhuterraform-state"
  role   = "roles/storage.objectAdmin"
  member = "serviceAccount:terraform-cicd@my-terraform-admin.iam.gserviceaccount.com"
}

# Developers need read access for plan operations
resource "google_storage_bucket_iam_member" "dev_viewer" {
  bucket = "santhuterraform-state"
  role   = "roles/storage.objectViewer"
  member = "group:developers@myorg.com"
}

# Only admins can delete state files or modify bucket settings
resource "google_storage_bucket_iam_member" "admin_full" {
  bucket = "santhuterraform-state"
  role   = "roles/storage.admin"
  member = "group:infra-admins@myorg.com"
}
