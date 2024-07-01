output "service_account_email" {
  description = "The email of the created service account."
  value       = google_service_account.service_account.email
}

output "bucket_name" {
  description = "The name of the created bucket."
  value       = google_storage_bucket.bucket.name
}

output "bucket_url" {
  description = "Bucket URL."
  value       = google_storage_bucket.bucket.url
}
