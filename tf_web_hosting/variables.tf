variable "website_bucket_name" {
  description = "S3 bucket for static  web hosting "
  type = string
  default = "tf-static-web-hosting"
}
variable "state_bucket_name" {
  description = "S3 bucket for store state file "
  type = string
  default = "tf-state-file12"
}
