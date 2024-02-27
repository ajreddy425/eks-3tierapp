resource "aws_security_group" "all_sg_eks" {
  name        = "all_sg"
  description = "all_sg"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "all_sg_eks"
  }
}

resource "aws_vpc_security_group_ingress_rule" "inb_rule_all_ports" {
  security_group_id = aws_security_group.all_sg_eks.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 0
  description       = "Allow all traffic for all ports"
  ip_protocol       = "-1"  # -1 represents all protocols
  to_port           = 65535  # The maximum port number
}


# resource "aws_vpc_security_group_ingress_rule" "inb_rule_http" {
#   security_group_id = aws_security_group.all_sg.id
#   cidr_ipv4         = "0.0.0.0/0"
#   description       = "http"
#   from_port         = 80
#   ip_protocol       = "tcp"
#   to_port           = 80
# }



resource "aws_vpc_security_group_egress_rule" "out_rule" {
  security_group_id = aws_security_group.all_sg_eks.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

