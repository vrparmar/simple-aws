provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket-example" {
  bucket = "bucket-example-20210121"
}
