# # MySQL 서브넷 그룹 생성
# resource "aws_db_subnet_group" "my-db-sg" {
#   name       = "my-dbsg"
#   subnet_ids = [
#     aws_subnet.jykim-private-subnet-db-a.id,
#     aws_subnet.jykim-private-subnet-db-c.id
#   ]
# }
#
# # DB 생성
# resource "aws_db_instance" "jy-db" {
#   allocated_storage      = 20
#   storage_type           = "gp2"
#   engine                 = "mysql"
#   engine_version         = "8.0"
#   instance_class         = "db.t3.medium"
#   db_name                = "mysql_db"
#   identifier             = "jy-db"
#   username               = "root"
#   password               = "It12345!"
#   multi_az               = true
#   db_subnet_group_name   = aws_db_subnet_group.my-db-sg.name
#   vpc_security_group_ids = [aws_security_group.my_db_alb_sg.id]
#   skip_final_snapshot    = true
#
#   tags = {
#     "Name" = "juyun-mysql"
#   }
# }