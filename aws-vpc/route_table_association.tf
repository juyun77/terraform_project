
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

resource "aws_route_table_association" "jykim-route-association-pri-sub2" {
  route_table_id = aws_route_table.jykim-route-table-pri-sub2.id
  subnet_id      = aws_subnet.jykim-private-subnet2.id
}

resource "aws_route_table_association" "jykim-route-association-pri-sub4" {
  route_table_id = aws_route_table.jykim-route-table-pri-sub4.id
  subnet_id      = aws_subnet.jykim-private-subnet4.id
}



# 추가적인 DB 서브넷에 대한 라우트 테이블 연결도 동일한 방식으로 추가

