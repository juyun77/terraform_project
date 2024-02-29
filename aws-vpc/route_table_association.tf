
########## Public Subnet Route Tables Association ########## 

resource "aws_route_table_association" "jykim-route-association-pub-sub1" {
  route_table_id = aws_route_table.jykim-route-table-pub-sub1.id
  subnet_id      = aws_subnet.jykim-public-subnet1.id
}

resource "aws_route_table_association" "jykim-route-association-pub-sub3" {
  route_table_id = aws_route_table.jykim-route-table-pub-sub3.id
  subnet_id      = aws_subnet.jykim-public-subnet3.id
}

########## Private Subnet Route Tables Association ########## 

resource "aws_route_table_association" "jykim-route-association-pri-sub1" {
  route_table_id = aws_route_table.jykim-route-table-pri-sub1.id
  subnet_id      = aws_subnet.jykim-private-subnet1.id
}

resource "aws_route_table_association" "jykim-route-association-pri-sub3" {
  route_table_id = aws_route_table.jykim-route-table-pri-sub3.id
  subnet_id      = aws_subnet.jykim-private-subnet3.id
}

resource "aws_route_table_association" "jykim-route-association-pri-sub-db-a" {
  route_table_id = aws_route_table.jykim-route-table-pri-sub-db-a.id
  subnet_id      = aws_subnet.jykim-private-subnet-db-a.id
}

resource "aws_route_table_association" "jykim-route-association-pri-sub-db-c" {
  route_table_id = aws_route_table.jykim-route-table-pri-sub-db-c.id
  subnet_id      = aws_subnet.jykim-private-subnet-db-c.id
}



# 추가적인 DB 서브넷에 대한 라우트 테이블 연결도 동일한 방식으로 추가

