output "ec2_public_ip" {
  value = aws_instance.new-ec2-server.public_ip
}

