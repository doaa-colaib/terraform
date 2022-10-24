resource "aws_subnet" "subnet-public1" {
    vpc_id = aws_vpc.newvpc.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true"
}

resource "aws_subnet" "subnet-public2" {
    vpc_id = aws_vpc.newvpc.id
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_launch = "true"
}

resource "aws_subnet" "subnet-private1" {
    vpc_id = aws_vpc.newvpc.id
    cidr_block = "10.0.3.0/24"
}

resource "aws_subnet" "subnet-private2" {
    vpc_id = aws_vpc.newvpc.id
    cidr_block = "10.0.4.0/24"
}