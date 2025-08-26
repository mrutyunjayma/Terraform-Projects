## bucket for host website

resource "aws_s3_bucket" "website_bucket" {
  bucket = var.website_bucket_name
}

## bucket for state file
resource "aws_s3_bucket" "state_bucket" {
  bucket = var.state_bucket_name

  versioning {
    enabled = true
  }

  tags = {
    Name = "TerraformStateBucket"
  }
}

resource "aws_dynamodb_table" "tf_lock" {
  name = "tf-state-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_s3_bucket_public_access_block" "website_bucket" {
  bucket = aws_s3_bucket.website_bucket.id

  block_public_acls = false
  block_public_policy = false
  ignore_public_acls = false
  restrict_public_buckets = false
}

resource "aws_s3_object" "index" {
  bucket = var.website_bucket_name
  key = "index.html"
  source = "index.html"
  content_type = "text/html"
}
resource "aws_s3_object" "error" {
  bucket = var.website_bucket_name
  key = "error.html"
  source = "error.html"
  content_type = "text/html"
}

resource "aws_s3_bucket_website_configuration" "website_bucket" {
  bucket = aws_s3_bucket.website_bucket.id

  index_document {
    suffix = "index.html"
  }
  error_document {
    key = "error.html"
  }
}

resource "aws_s3_bucket_policy" "website_bucket" {
  bucket = aws_s3_bucket.website_bucket.id

  policy = <<EOF
  {
    "Version": "2012-10-17",
    "Statement":[
        {"Effect": "Allow",
        "Principal": "*",
        "Action": ["s3:GetObject"],
        "Resource":[
            "${aws_s3_bucket.website_bucket.arn}",
            "${aws_s3_bucket.website_bucket.arn}/*"
        ]}
    ]
  }
  EOF
}






