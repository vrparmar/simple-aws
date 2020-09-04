provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo-s3" {
  bucket = "${var.s3_bucket_name}-demo"
}

variable "s3_bucket_name" {
  default = "demo-2020-07-29"
}
