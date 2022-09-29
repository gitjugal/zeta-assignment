variable "ami" {
    type = string
    description = "AMI for the EC2 instance"
}

variable "instance_type" {
    type = string
    description = "Instance type for the EC2 instance"
}

variable "ec2_name" {
    type = string
    description = "Name tag for the EC2 instance"
}

variable "environment" {
    type = string
    description = "Environment tag for the EC2 instance"
}

variable "subnet_id" {
    type = string
    description = "Subnet ID to create the ENI in."
}
