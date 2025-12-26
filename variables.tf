variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"      # Default AWS region - by Ali Ahmed
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"       # Free-tier eligible instance - by Ali Ahmed
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string           # Must already exist in AWS - by Ali Ahmed
}