resource "aws_instance" "this" {
  ami           = data.aws_ami.ubuntu.id # Latest Ubuntu AMI fetched dynamically - by Ali Ahmed
  instance_type = var.instance_type      # Instance type passed from root module - by Ali Ahmed
  key_name      = var.key_name           # SSH key pair name - by Ali Ahmed
  user_data     = file("${path.module}/user_data.sh") # Startup script for EC2 - by Ali Ahmed

  tags = {
    Name = "NodeJS-Server"                # Tag name for EC2 identification - by Ali Ahmed
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true                     # Always fetch latest AMI - by Ali Ahmed
  owners      = ["099720109477"]          # Canonical (Ubuntu) official owner ID - by Ali Ahmed

  filter {
    name   = "name"                      # Filter AMI by name - by Ali Ahmed
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"] # Ubuntu 20.04 images - by Ali Ahmed
  }
}