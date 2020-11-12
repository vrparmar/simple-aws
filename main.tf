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

data "aws_vpc" "accurics_vpc" {
  id = "vpc-00ab82b3d0d23ff34"
}

resource "local_file" "vpc-id" {
  content  = <<JSON
{
  "vpc_id": data.aws_vpc.accurics_vpc.id
}
  JSON
  filename = "./vpc-id.json"
}
