output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "private_subnet_ids" {
  value = [
    aws_subnet.frontend_subnet1.id, aws_subnet.frontend_subnet2.id,
    aws_subnet.backend_subnet1.id, aws_subnet.backend_subnet2.id,
    aws_subnet.data_subnet1.id, aws_subnet.data_subnet2.id
  ]
}
