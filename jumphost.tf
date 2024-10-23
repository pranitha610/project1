resource "aws_instance" "ec2" {
  ami                    = "ami-050cd642fd83388e4"
  instance_type          = "t2.micro"
  key_name               = "prani"
  subnet_id              = aws_subnet.public-subnet1.id
  vpc_security_group_ids = [aws_security_group.security-group.id]
  iam_instance_profile = aws_iam_instance_profile.instance-profile.name
  root_block_device {
    volume_size = 30
  }
  user_data = templatefile("./install-tools.sh", {})

  tags = {
    Name = "pranitha"
  }
}
