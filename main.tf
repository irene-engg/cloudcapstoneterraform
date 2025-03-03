terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.6.6"
}

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"  # Correct path to the VPC module
}

module "fargate" {
  source          = "./modules/fargate"
  vpc_id         = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnet_ids
}
