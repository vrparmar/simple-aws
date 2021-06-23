provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "harshit-bucket" {
  bucket = "harshit-bucket"
  acl    = "private"

  tags = {
    Name = "harshit-bucket"
  }
}

resource "aws_s3_bucket_policy" "harshit_bucket_policy" {
  bucket = aws_s3_bucket.harshit-bucket.id

  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Id": "Policy1609848560531",
    "Statement": [
        {
            "Sid": "Stmt1609848558282",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::333567660568:user/harshit"
            },
            "Action": "s3:Put*",
            "Resource": "arn:aws:s3:::harshit-bucket/*"
        }
    ]
}
POLICY
}

resource "aws_security_group" "harshit_sg2" {
  name        = "harshit_sg2"
  description = "Used in the terraform2"
  vpc_id      = "harshit-vpc2"

  tags = {
    Name = "harshit_sg2"
  }

  ingress {
    to_port     = 4505
    from_port   = 4505
    protocol    = "tcp"
    cidr_blocks = ["192.164.0.0/25"]
  }

  ingress {
    to_port     = 3389
    from_port   = 3389
    protocol    = "tcp"
    cidr_blocks = ["192.164.0.0/24"]
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}