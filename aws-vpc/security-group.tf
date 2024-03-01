
########### Bastion (EC2 Instance) Security Group ###########

resource "aws_security_group" "jykim-sg-bastion" {

  name   = "jykim-sg-bastion"
  vpc_id = aws_vpc.jykim-vpc.id

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "ingress security_group_rule for bastion"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "egress security_group_rule for bastion"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  tags = {
    Name = "jykim-sg-bastion"
  }
}

# 데이터베이스 보안그룹
resource "aws_security_group" "my_db_alb_sg" {
  name        = "my-db-alb-sg"
  description = "Database Security Group"
  vpc_id      = aws_vpc.jykim-vpc.id

  # 데이터베이스 포트에 대한 인바운드 규칙 추가
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow inbound traffic to the database port"
  }

  tags = {
    Name = "my-db-alb-sg"
  }
}
