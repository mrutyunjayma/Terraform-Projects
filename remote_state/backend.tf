terraform {
  backend "s3" {
    bucket = "tf-s3-remote-state-with12"
    key = "mj/terraform.tfstate"
    region = "ap-south-1"
    
  }
}