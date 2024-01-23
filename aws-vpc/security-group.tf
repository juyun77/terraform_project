
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
