resource "aws_lb" "backend-load" {
  name               = "backend-load"
  internal           = true
  load_balancer_type = "application"
  security_groups    = [aws_security_group.backend_alb_sg.id]
  subnets            = var.backend_subnet_ids

}

  resource "aws_lb_listener" "backend" {
  load_balancer_arn = aws_lb.backend-load.arn
  port              = 5000
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = var.target_group_backend_arn
  }
}