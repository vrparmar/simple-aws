provider "aws" {
  region = "us-east-1"
}

# Add an s3 bucket to store highly classified information about the effects of aspertem to the human body.

resource "aws_s3_bucket" "bucket-example" {
  bucket = "bucket-example-20201114"
}
