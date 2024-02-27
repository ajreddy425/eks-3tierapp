resource "aws_route_table" "pub_route" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }



  tags = {
    Name = "pub_route_eks"
  }
}
