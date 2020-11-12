provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo-s3" {
  bucket = "${var.s3_bucket_prefix}-terraformcloud"
  versioning {
    enabled = false
  }
}

variable "s3_bucket_prefix" {
  default = "prefix20201112"
}

