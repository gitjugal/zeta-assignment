region = "us-west-1"

vpc_name = "my-prod-vpc"

cidr_block = "10.0.0.0/16"

environment = "prod"

public_subnets_cidr  = ["10.0.1.0/24"] //List of Public subnet cidr range

private_subnets_cidr = ["10.0.10.0/24","10.0.11.0/24","10.0.12.0/24"] //List of private subnet cidr range

ami = "ami-ebd02392"

instance_type = "t2.micro"