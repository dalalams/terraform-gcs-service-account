# Google Cloud Storage and Service Account 

This module provisions a Google Cloud Storage Bucket along with a Service Account and assigns IAM roles for object viewing and creation.

## Example usage
```hcl
module "gcs_service_account" {
  source = "./path-to-module"

  account_id                = "your-service-account-id"
  bucket_name               = "your-bucket-name"
  location                  = "your-bucket-location"
  force_destroy             = true_or_false
  storage_class             = "STANDARD"
  bucket_policy_only        = true_or_false
  labels                    = { environment = "dev" }
  public_access_prevention  = "enforced" or "inherited"
  versioning                = true_or_false
  autoclass                 = true_or_false
  retention_policy          = {
    is_locked        = true_or_false
    retention_period = 3600
  }
  soft_delete_policy        = {
    retention_duration_seconds = 86400
  }
}
```

## Resources Created
- google_service_account.service_account: Creates a service account.
- google_storage_bucket.bucket: Creates a Google Cloud Storage bucket.
- google_storage_bucket_iam_member.bucket_viewer: Assigns the "Storage Object Viewer" role to the service account.
- google_storage_bucket_iam_member.bucket_creator: Assigns the "Storage Object Creator" role to the service account.
