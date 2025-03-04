terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.6.6"
}

# To create the resources in the specified region
provider "aws" {
  region = var.aws_region
}

# To run the VPC module
module "vpc" {
  source = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
}

module "fargate" {
  source          = "./modules/fargate"
  vpc_id         = module.vpc.vpc_id
  frontend_subnet1 = module.vpc.frontend_subnet1
  backend_subnet1 = module.vpc.backend_subnet1
}

