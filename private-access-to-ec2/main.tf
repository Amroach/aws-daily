terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}

# Create a VPC
resource "aws_vpc" "ecom2_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "ecom2-vpc"
  }
}

resource "aws_subnet" "ecom_subnet_public1_eu_west_1a" {
  vpc_id     = aws_vpc.ecom2_vpc.id
  cidr_block = "10.0.0.0/20"

  tags = {
    Name = "ecom-subnet-public1-eu-west-1a"
  }
}
