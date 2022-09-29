region = "us-east-1"

vpc_name = "my-dev-vpc"

cidr_block = "172.31.0.0/16"

environment = "dev"

public_subnets_cidr  = ["172.31.1.0/24"] //List of Public subnet cidr range

private_subnets_cidr = ["172.31.2.0/24","172.31.3.0/24"] //List of private subnet cidr range

ami = "ami-ebd02392"

instance_type = "t2.micro"