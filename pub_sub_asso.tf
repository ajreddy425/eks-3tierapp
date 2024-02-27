resource "aws_route_table_association" "sub1_asso" {
  subnet_id      = aws_subnet.pub_subnet1.id
  route_table_id = aws_route_table.pub_route.id
}


resource "aws_route_table_association" "sub2_asso" {
  subnet_id      = aws_subnet.pub_subnet2.id
  route_table_id = aws_route_table.pub_route.id
}
