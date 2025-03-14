output "backend_alb_sg" {
  description = "Id of Backend Security group"
  value       = aws_security_group.backend_alb_sg.id
}

output "backend_listener_id" {
  description = "Id of Listener"
  value       = aws_lb_listener.backend.id
}