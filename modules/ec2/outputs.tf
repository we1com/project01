output "public_ip" {
  value = aws_instance.this.public_ip   # Expose EC2 public IP to root module - by Ali Ahmed
}