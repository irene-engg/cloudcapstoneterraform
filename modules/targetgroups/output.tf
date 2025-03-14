output "target_group_arn" {
  value = aws_lb_target_group.frontend.arn
}

output "target_group_backend_arn" {
  value = aws_lb_target_group.backend-tg.arn
}
