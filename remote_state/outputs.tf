output "instance_hostname" {
  description = "private dns name of Ec2 instance"
  value = aws_instance.app_server.private_dns
}
output "bucket_details" {
  description = "S3 bucket details."
  value = {
    arn    = aws_s3_bucket.tf_state.arn,
    id     = aws_s3_bucket.tf_state.id
  }
}
