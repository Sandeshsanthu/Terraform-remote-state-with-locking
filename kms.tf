# Create a KMS key ring and key for state encryption
resource "google_kms_key_ring" "terraform" {
  project  = "project-d1a95002-78b0-493b-b7e"
  name     = "terraform-state-keyring"
  location = "us"
}

resource "google_kms_crypto_key" "terraform_state" {
  name     = "terraform-state-key"
  key_ring = google_kms_key_ring.terraform.id

  # Rotate the key automatically every 90 days
  rotation_period = "7776000s"

  lifecycle {
    prevent_destroy = true
  }
}
