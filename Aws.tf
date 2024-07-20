#install terraform on laptop 
#auth and autherization by terrafrom
#create a user in AWS AC name terraform
#attach a policy
#give adminat privledeges
#craete sa user



terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.55.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-west-2"
}
# Create a VPC
resource "aws_vpc" "VPC1" {
  cidr_block = "10.0.0.0/16"
}
