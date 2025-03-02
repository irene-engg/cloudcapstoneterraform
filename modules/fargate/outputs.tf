output "frontend_service_arn" {
  description = "ARN of the Frontend ECS Service"
  value       = aws_ecs_service.frontend_service.arn
}

output "backend_service_arn" {
  description = "ARN of the Backend ECS Service"
  value       = aws_ecs_service.backend_service.arn
}
