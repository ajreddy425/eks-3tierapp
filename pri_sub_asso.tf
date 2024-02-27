resource "aws_route_table_association" "pri_sub1_asso" {
  subnet_id      = aws_subnet.pri_subnet1.id
  route_table_id = aws_route_table.pri_route.id
}


resource "aws_route_table_association" "pri_sub2_asso" {
  subnet_id      = aws_subnet.pri_subnet2.id
  route_table_id = aws_route_table.pri_route.id
}
