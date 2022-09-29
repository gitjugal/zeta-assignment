output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets_id" {
  value = module.vpc.public_subnets_id
}

output "private_subnets_id" {
  value = module.vpc.private_subnets_id
}

output "ec2_id" {
  value = module.ec2_instance.id
}

output "ec2_arn" {
  value = module.ec2_instance.arn
}