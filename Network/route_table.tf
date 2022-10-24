resource "aws_route_table" "public" {
  vpc_id = aws_vpc.newvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.mygw.id
  }
}

//resource "aws_route" "public-route" {
//  route_table_id            = aws_route_table.public.id
//  destination_cidr_block    = "0.0.0.0/0"
//  gateway_id = aws_internet_gateway.mygw.id
//}

resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.subnet-public1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.subnet-public2.id
  route_table_id = aws_route_table.public.id
}



resource "aws_route_table" "private" {
  vpc_id = aws_vpc.newvpc.id
}

//resource "aws_route" "private-route" {
//  route_table_id            = aws_route_table.public.id
//  destination_cidr_block    = "0.0.0.0/0"
//  gateway_id = aws_nat_gateway.mynat.id
//}

resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.subnet-private1.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.subnet-private2.id
  route_table_id = aws_route_table.private.id
}


//-------
//feki
//-------
//resource "aws_route_table" "rt-public" {
//  vpc_id = aws_vpc.vpc.id
//
//  route {
//    cidr_block = "0.0.0.0/0"
//    gateway_id = aws_internet_gateway.ig.id
//  }
//}
//
//resource "aws_route_table_association" "public-rt-subnet-1" {
//  subnet_id      = aws_subnet.sb-public-1.id
//  route_table_id = aws_route_table.rt-public.id
//}
//resource "aws_route_table_association" "public-rt-subnet-2" {
//  subnet_id      = aws_subnet.sb-public-2.id
//  route_table_id = aws_route_table.rt-public.id
//}
//
//resource "aws_route_table" "rt-private" {
//  vpc_id = aws_vpc.vpc.id
//}
//
//resource "aws_route_table_association" "private-rt-association-1" {
//  subnet_id      = aws_subnet.sb-private-1.id
//  route_table_id = aws_route_table.rt-private.id
//}
//
//resource "aws_route_table_association" "private-rt-association-2" {
//  subnet_id      = aws_subnet.sb-private-2.id
//  route_table_id = aws_route_table.rt-private.id
//}