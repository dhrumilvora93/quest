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
  ami = "ami-02e136e904f3da870"
  instance_type = "t2.micro"
  user_data = "${file("ec2-setup.sh")}"
  security_groups = [ "sg-0f3a15a83afddf36e" ]
  subnet_id = "subnet-09068358b295680f2"
  tags = {
    Name = var.instance_name
  }
}

