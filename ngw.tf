resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.eip_asso.id
  subnet_id     = aws_subnet.pub_subnet1.id

  tags = {
    Name = "gw-NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  #   depends_on = [aws_internet_gateway.example]
}


resource "aws_eip" "eip_asso" {
  #   instance = aws_instance.web.id
  domain = "vpc"
}
