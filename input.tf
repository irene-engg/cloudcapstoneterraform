variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "ca-central-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}
