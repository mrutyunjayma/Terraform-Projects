terraform {
  backend "s3" {
    bucket = "tf-state-file12"
    key = "mj/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "tf-state-lock"
    encrypt = true
  }
}