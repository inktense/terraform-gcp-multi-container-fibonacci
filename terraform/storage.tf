resource "google_storage_bucket" "tfstate" {
  name          = var.tfstate_bucket_name
  force_destroy = false
  location      = "EU"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}