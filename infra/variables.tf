variable "DB_USERNAME" {
  description = "Database username"
  type = string
  sensitive = true
}

variable "DB_PASSWORD" {
  description = "Database password"
  type = string
  sensitive = true
}

variable "DB_NAME" {
  description = "Database name"
  type = string
  sensitive = true
}

variable "BUCKET_NAME" {
  description = "State file S3 Bucket name"
  type = string
  sensitive = true
}

variable "BUCKET_KEY" {
  description = "State file path in S3 Bucket"
  type = string
  sensitive = true
}

variable "AWS_REGION" {
  description = "State file region in S3 Bucket"
  type = string
  sensitive = true
}