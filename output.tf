output "instance_pub_id" {
  value = aws_instance.public_instance.public_ip
}

output "instance_pvt_id" {
  value = aws_instance.public_instance.private_ip
}