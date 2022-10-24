output "vpc_id" {
  value = aws_vpc.newvpc.id
}

output "vpc_cidr" {
  value = aws_vpc.newvpc.cidr_block
}

output "public-subnet-id" {
  value = aws_subnet.subnet-public1.id
}

output "private-subnet-id" {
  value = aws_subnet.subnet-private1.id
}