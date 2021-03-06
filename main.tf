provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "harshit_sg2" {
  name        = "harshit_sg2"
  description = "Used in the terraform"
  vpc_id      = "harshit-vpc2"

  tags = {
    Name = "harshit_sg2"
    Name1 = "harshit_sg"
  }

  ingress {
    to_port     = 3030
    from_port   = 3030
    protocol    = "tcp"
    cidr_blocks = ["192.164.0.0/25"]
  }

  ingress {
    to_port     = 7001
    from_port   = 7001
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