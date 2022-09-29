terraform {
    backend "local" {
        path = "terraform.tfstate"
    }
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 4.0"
        }
    }
}

provider "aws" {
  region = var.region
  access_key = "AKIAWXAGTCVR3EQGC6CY"
  secret_key = "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"
}

locals {
  availability_zones = ["${var.region}a", "${var.region}b", "${var.region}c"]
}

module "vpc" {
    source      = "./modules/network/vpc"
    vpc_name    = var.vpc_name
    cidr_block  = var.cidr_block
    environment = var.environment
    public_subnets_cidr  = var.public_subnets_cidr
    private_subnets_cidr = var.private_subnets_cidr
    availability_zones   = local.availability_zones
}

module "ec2_instance" {
  source    = "./modules/virtual-machine/ec2"
  ec2_name  = "private-vm"
  environment = var.environment
  ami       = var.ami
  instance_type  = var.instance_type
  subnet_id   = "module.vpc.private_subnets_id"
}