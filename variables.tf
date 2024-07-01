variable "account_id" {
  description = "The account id that is used to generate the service account email address. Must be unique."
  type        = string
}

variable "bucket_name" {
  description = "Name of the bucket. Must be unique."
  type        = string
}

variable "location" {
  description = "The location of the bucket."
  type        = string
  default     = "me-central2"
}

variable "force_destroy" {
  description = "Deletes all contained objects when the bucket is destroyed."
  type        = bool
  default     = false
}

variable "storage_class" {
  description = "The storage class of the new bucket (e.g., STANDARD, NEARLINE, COLDLINE, ARCHIVE)."
  type        = string
  default     = "STANDARD"
}

variable "labels" {
  description = "A set of key/value label pairs to assign to the bucket."
  type        = map(string)
  default     = null
}

variable "bucket_policy_only" {
  description = "Enables uniform bucket-level access."
  type        = bool
  default     = true
}

variable "versioning" {
  description = "While set to true, versioning is fully enabled for this bucket."
  type        = bool
  default     = true
}

variable "autoclass" {
  description = "While set to true, autoclass is enabled for this bucket."
  type        = bool
  default     = false
}

variable "retention_policy" {
  description = "Configuration of the bucket's data retention policy for how long objects in the bucket should be retained."
  type = object({
    is_locked        = bool
    retention_period = number
  })
  default = null
}

variable "public_access_prevention" {
  description = "Prevents public access to a bucket. Acceptable values are inherited or enforced. If inherited, the bucket uses public access prevention, only if the bucket is subject to the public access prevention organization policy constraint."
  type        = string
  default     = "enforced"
}

variable "soft_delete_policy" {
  description = "Soft delete policies to apply. Format is the same as described in provider documentation https://www.terraform.io/docs/providers/google/r/storage_bucket.html#nested_soft_delete_policy"
  type = object({
    retention_duration_seconds = optional(number)
  })
  default = {}
}
