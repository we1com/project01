terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"   # AWS provider source - by Ali Ahmed
      version = "~> 5.0"          # AWS provider version constraint - by Ali Ahmed
    }
  }
}

provider "aws" {
  region = var.aws_region        # AWS region where resources will be created - by Ali Ahmed
}

module "ec2" {
  source        = "./modules/ec2" # Path to EC2 module - by Ali Ahmed
  instance_type = var.instance_type # EC2 instance size (t2.micro etc.) - by Ali Ahmed
  key_name      = var.key_name      # Existing AWS key pair for SSH - by Ali Ahmed
}