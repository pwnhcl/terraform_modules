output "publicIP" {
  value = aws_instance.ec2_instance.public_ip
}