terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "core" {
  source      = "../../modules/core-infra"
  environment = var.environment
  vpc_cidr    = var.vpc_cidr
  azs         = var.azs
}
