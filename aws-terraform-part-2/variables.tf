variable "region" {
    type = string
    description = "The region in which to deploy the resources"
}

variable "cidr_block" {
    type = string
    description = "CIDR range for the new VPC"
}

variable "vpc_name" {
    type = string
    description = "Name of the VPC"
}

variable "environment" {
    type = string
    description = "Name of the environment in which VPC is created"
}

variable "public_subnets_cidr" {
  type        = list
  description = "The CIDR block for the public subnet"
}

variable "private_subnets_cidr" {
  type        = list
  description = "The CIDR block for the private subnet"
}

variable "ami" {
  type = string
  description = "AMI for the EC2 instance"
}

variable "instance_type" {
  type = string
  description = "Instance type for the EC2 instance"
}
