output "region" {
    description = "Jumphost Server region"
    value = "us-west-2"
}
output "jumphost_public_ip" {
  description = "Public IP address of the EC2 jumphost"
  value       = aws_instance.ec2.public_ip
}
