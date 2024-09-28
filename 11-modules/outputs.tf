output "public_ip" {
  value = aws_instance.tfvm.public_ip
}
output "private_ip" {
  value = aws_instance.tfvm.private_ip
}

output "instance_id" {
  value = aws_instance.tfvm.id
}
