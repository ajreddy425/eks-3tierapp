resource "aws_subnet" "pub_subnet1" {
  vpc_id            = aws_vpc.main.id
  availability_zone = "us-east-1a"
  cidr_block        = "10.0.0.0/24"

  tags = {
    Name     = "Public-subnet-01"
  }
}




resource "aws_subnet" "pub_subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name     = "Public-subnet-02"
  }
}


resource "aws_subnet" "pri_subnet1" {
  vpc_id            = aws_vpc.main.id
  availability_zone = "us-east-1a"
  cidr_block        = "10.0.3.0/24"

  tags = {
    Name     = "Private-subnet-01"
   
  }
}

resource "aws_subnet" "pri_subnet2" {
  vpc_id            = aws_vpc.main.id
  availability_zone = "us-east-1b"
  cidr_block        = "10.0.4.0/24"

  tags = {
    Name     = "Private-subnet-01"
   
  }
}
