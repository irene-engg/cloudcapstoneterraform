output "frontend_service_arn" {
  description = "ARN of the Frontend ECS Service"
  value       = aws_ecs_service.frontend_service.id
}

output "backend_service_arn" {
  description = "ARN of the Backend ECS Service"
  value       = aws_ecs_service.backend_service.id
}

output "frontend-sg-id" {
  description = "Id of the Backend ECS Service SG"
  value       = aws_security_group.frontend_sg.id
}
