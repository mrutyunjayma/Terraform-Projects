variable "instance_name" {
  description = " value of the instance's tag name"
  type = string
  default = "remote_state"
}
variable "instance_type"{
  description = "the type of instance"
  type = string
  default = "t2.micro"
}
variable "aws_s3_bucket" {
  description = "s3 buckets name"
  type = string
  default = "tf-s3-state-bucket"
}