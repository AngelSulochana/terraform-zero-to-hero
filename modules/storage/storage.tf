resource "google_storage_bucket" "tf-bucket-717523" {
  name = "tf-bucket-717523"
 location = "US"
 force_destroy = true
 uniform_bucket_level_access = true
}
