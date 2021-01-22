provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket-example" {
  bucket = "bucket-example-20201114"
}


# resource "null_resource" "accurics_notify" {
#     triggers = {
#         any = timestamp()
#     }
    
#     provisioner "local-exec" {
#         command = "chmod +x accurics-notify.sh && ./accurics-notify.sh"
#     }
# }

# data "aws_vpc" "accurics_vpc" {
#   id = "vpc-00ab82b3d0d23ff34"
# }

# resource "local_file" "vpc-id" {
#   content  = <<JSON
# {
#   "vpc_id": data.aws_vpc.accurics_vpc.id
# }
#   JSON
#   filename = "./vpc-id.json"
# }
