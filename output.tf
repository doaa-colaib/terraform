output "bastion_public_ip" {
  value = aws_instance.bastion-ec2.public_ip
}