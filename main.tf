provider "aws" {
  region = "eu-central-1"
  profile = "James"
}

terraform {
  backend "s3" {
    bucket = "jim-git-codebuild-terraform-4353"
    key = "terraform.tfstate"
    region = "eu-central-1"
    profile = "James"
  }
}


module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.16.0"

  name = "Jim-VPC"
  cidr = "10.0.0.0/16"
  azs = ["eu-central-1a"]
  private_subnets = ["10.0.1.0/24"]
  public_subnets = ["10.0.101.0/24"]

  public_subnet_tags = {
    Name = "Jim-Public-Subnet"
  }

  private_subnet_tags = {
    Name = "Jim-Private-Subnet"
  }
  tags = {
    Name = "Jim-VPC"
  }
}