
########## Public Subnet Route Tables Association ########## 

resource "aws_route_table_association" "jykim-route-association-pub-sub-a" {
  route_table_id = aws_route_table.jykim-route-table-pub-sub-a.id
  subnet_id      = aws_subnet.jykim-public-subnet-a.id
}

resource "aws_route_table_association" "jykim-route-association-pub-sub-c" {
  route_table_id = aws_route_table.jykim-route-table-pub-sub-c.id
  subnet_id      = aws_subnet.jykim-public-subnet-c.id
}

########## Private Subnet Route Tables Association ########## 

resource "aws_route_table_association" "jykim-route-association-pri-sub-a" {
  route_table_id = aws_route_table.jykim-route-table-pri-sub-a.id
  subnet_id      = aws_subnet.jykim-private-subnet-a.id
}

resource "aws_route_table_association" "jykim-route-association-pri-sub-c" {
  route_table_id = aws_route_table.jykim-route-table-pri-sub-c.id
  subnet_id      = aws_subnet.jykim-private-subnet-c.id
}

resource "aws_route_table_association" "jykim-route-association-pri-sub-db-a" {
  route_table_id = aws_route_table.jykim-route-table-pri-sub-db-a.id
  subnet_id      = aws_subnet.jykim-private-subnet-db-a.id
}

resource "aws_route_table_association" "jykim-route-association-pri-sub-db-c" {
  route_table_id = aws_route_table.jykim-route-table-pri-sub-db-c.id
  subnet_id      = aws_subnet.jykim-private-subnet-db-c.id
}





