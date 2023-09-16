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
  region = "us-west-1"
}
