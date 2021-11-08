terraform {
required_providers {
  aws = {
      source = "hashicorp/aws"
      version = "~> 3.27"
  
        } 
    }
    required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "rearc-dev"
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami = var.ami_id
  instance_type = "t2.micro"
  user_data = "${file("ec2-setup.sh")}"
  security_groups = [ var.sg_id ]
  subnet_id = var.sn_id
  tags = {
    Name = var.instance_name
  }
}

