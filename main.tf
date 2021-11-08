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
  profile = var.aws_profile
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami = var.ami_id
  instance_type = "t2.micro"
  user_data = "${file("ec2-setup.sh")}"
  security_groups = [ aws_security_group.allow_web_DMZ.id ]
  subnet_id = aws_subnet.publicsubnets.id
  tags = {
    Name = var.instance_name
  }
}

# TODO: VPC Resources
# TODO: attempt using ecs/eks as the container scheduler/orchestrator instead of using ec2.
