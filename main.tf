provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo-s3" {
  bucket = "${var.s3_bucket_name}-demo"
}

resource "aws_s3_bucket" "demo-s3-b" {
  bucket = "${var.s3_bucket_name}-demob"
}

variable "s3_bucket_name" {
  default = "demo-2020-07-29"
}

resource "aws_api_gateway_deployment" "MyDemoDeployment" {
  rest_api_id = "API_ID"
  stage_name  = "test"

  triggers = {"a" = "b", "c" = "d"}

  lifecycle {
    create_before_destroy = true
  }
}
