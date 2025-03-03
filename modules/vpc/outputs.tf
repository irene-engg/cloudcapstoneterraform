output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.vpc_blynk.id
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = [aws_subnet.public_subnet1.id, aws_subnet.public_subnet2.id]
}

output "private_subnet_ids" {
  description = "List of private subnet IDs"
  value       = [
    aws_subnet.frontend_subnet1.id,
    aws_subnet.frontend_subnet2.id,
    aws_subnet.backend_subnet1.id,
    aws_subnet.backend_subnet2.id,
    aws_subnet.data_subnet1.id,
    aws_subnet.data_subnet2.id
  ]
}

output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.main.id
}

