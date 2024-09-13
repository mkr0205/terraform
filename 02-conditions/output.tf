output "public_ip" {
  value = aws_instance.tfvm.public_ip
  sensitive = false
  description = "This is the public IP of ec2 instance"
}

output "aws_security_group" {
  value = aws_security_group.tfRg.name
}