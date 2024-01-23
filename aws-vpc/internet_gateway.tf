resource "aws_internet_gateway" "jykim-internet-gateway" {

  depends_on = [
    aws_vpc.jykim-vpc
  ]

  vpc_id = aws_vpc.jykim-vpc.id
}