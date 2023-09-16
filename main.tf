#ami us-west-2 ami-0be50262c078dfea9

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider from off docs
provider "aws" {
  region = "us-west-2"
}

# Create a VPC
resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "Main VPC"
  }
}

# Create a second VPC to destroy 
# terraform destroy -target aws_vpc.my_vpc --auto-approve
resource "aws_vpc" "my_vpc" {
  cidr_block = "192.168.0.0/16"
  tags = {
    "Name" = "My VPC"
  }
}

# Replace this instance with another
# terraform apply -replace="aws_instance.server"
resource "aws_instance" "server" {
    ami = "ami-0be50262c078dfea9"
    instance_type = "t2.micro"
}