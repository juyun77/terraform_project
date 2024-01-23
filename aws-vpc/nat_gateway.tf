resource "aws_nat_gateway" "jykim-nat-gateway" {

  depends_on = [
    aws_eip.jykim-elastic-ip
  ]

  allocation_id     = aws_eip.jykim-elastic-ip.id
  subnet_id         = aws_subnet.jykim-public-subnet3.id
  connectivity_type = "public"

  tags = {
    Name        = "jykim-nat-gateway"
  }

  tags_all = {
    Name        = "jykim-nat-gateway"
  }

}
