
########## Public Subnet Route Tables ########## 

resource "aws_route_table" "jykim-route-table-pub-sub-a" {

  depends_on = [
    aws_vpc.jykim-vpc,
    aws_internet_gateway.jykim-internet-gateway
  ]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.jykim-internet-gateway.id
  }

  tags = {
    Name = "jykim-route-table-pub-sub-a"
  }

  tags_all = {
    Name = "jykim-route-table-pub-sub-a"
  }

  vpc_id = aws_vpc.jykim-vpc.id
}

resource "aws_route_table" "jykim-route-table-pub-sub-c" {

  depends_on = [
    aws_vpc.jykim-vpc,
    aws_internet_gateway.jykim-internet-gateway
  ]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.jykim-internet-gateway.id
  }

  tags = {
    Name = "jykim-route-table-pub-sub-c"
  }

  tags_all = {
    Name = "jykim-route-table-pub-sub-c"
  }

  vpc_id = aws_vpc.jykim-vpc.id
}


########## Private Subnet Route Tables ########## 

resource "aws_route_table" "jykim-route-table-pri-sub-a" {

  depends_on = [
    aws_vpc.jykim-vpc,
    aws_nat_gateway.jykim-nat-gateway
  ]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.jykim-nat-gateway.id
  }

  tags = {
    Name = "jykim-route-table-pri-sub-a"
  }

  tags_all = {
    Name = "jykim-route-table-pri-sub-a"
  }

  vpc_id = aws_vpc.jykim-vpc.id
}

resource "aws_route_table" "jykim-route-table-pri-sub-c" {

  depends_on = [
    aws_vpc.jykim-vpc,
    aws_nat_gateway.jykim-nat-gateway
  ]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.jykim-nat-gateway.id
  }

  tags = {
    Name = "jykim-route-table-pri-sub-c"
  }

  tags_all = {
    Name = "jykim-route-table-pri-sub-c"
  }

  vpc_id = aws_vpc.jykim-vpc.id
}


resource "aws_route_table" "jykim-route-table-pri-sub-db-a" {

  depends_on = [
    aws_vpc.jykim-vpc,
    aws_nat_gateway.jykim-nat-gateway
  ]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.jykim-nat-gateway.id
  }

  tags = {
    Name = "jykim-route-table-pri-sub-db-a"
  }

  tags_all = {
    Name = "jykim-route-table-pri-sub-db-a"
  }

  vpc_id = aws_vpc.jykim-vpc.id
}

resource "aws_route_table" "jykim-route-table-pri-sub-db-c" {

  depends_on = [
    aws_vpc.jykim-vpc,
    aws_nat_gateway.jykim-nat-gateway
  ]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.jykim-nat-gateway.id
  }

  tags = {
    Name = "jykim-route-table-pri-sub-db-c"
  }

  tags_all = {
    Name = "jykim-route-table-pri-sub-db-c"
  }

  vpc_id = aws_vpc.jykim-vpc.id
}


