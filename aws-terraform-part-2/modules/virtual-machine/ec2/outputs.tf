output "id" {
  description = "The ID of the instance"
  value       = aws_instance.vm.id
}

output "arn" {
  description = "The ARN of the instance"
  value       = aws_instance.vm.arn
}