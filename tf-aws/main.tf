terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

# configure the specified provider
provider "aws" {
  region = "ap-south-1"
}

# terraform manage the aws_instance resource with
# the aws provider
# resource unique id = aws_instance.app_server
resource "aws_instance" "app_server" {
  ami           = "ami-062df10d14676e201"
  instance_type = "t2.micro"
  # vpc_security_group_ids = [""]
  # subnet_id = "subnet-"
  tags = {
    Name = "ExampleAppServerInstance"
  }
}