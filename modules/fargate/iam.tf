data "aws_iam_role" "existing_ecs_execution_role1" {
  name = "ecs-execution-role1"
}

resource "aws_iam_role" "ecs_execution_role1" {
  count = length(data.aws_iam_role.existing_ecs_execution_role1.arn) > 0 ? 0 : 1
  name  = "ecs-execution-role1"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "ecs-tasks.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ecs_execution_role1_policy" {
  count      = length(data.aws_iam_role.existing_ecs_execution_role1.arn) > 0 ? 0 : 1
  role       = aws_iam_role.ecs_execution_role1[0].name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}
