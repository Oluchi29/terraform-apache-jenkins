resource "aws_instance" "new-ec2-server" {
  #ami                         = data.aws_ami.latest-amazon-linux-image.id
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = "oluchi"
  subnet_id                   = aws_subnet.my-subnet-1.id
  vpc_security_group_ids      = [aws_default_security_group.default-sg.id]
  availability_zone           = var.avail_zone
  associate_public_ip_address = true
  user_data                   = file("install-apache.sh")
  tags = {
    Name = "${var.env_prefix}-apacche-server"
  }
} 

