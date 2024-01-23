resource "aws_instance" "jykim-ec2-bastion" {

  ami                         = "ami-0454bb2fefc7de534"
  associate_public_ip_address = "true"
  availability_zone           = "ap-northeast-2a"

  iam_instance_profile        = aws_iam_instance_profile.jykim-ec2-instance-my-profile2.name
  key_name                    = "reca-key"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"

  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = "0"
  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
  }

  monitoring = "false"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      Name        = "jykim-ec2-bastion-ebs"
    }

    volume_size = "8"   # 8기가 짜리 ebs 생성 
    volume_type = "gp2"
  }

  source_dest_check = "true"


  tags = {
    Name        = "jykim-ec2-bastion"
  }

  tags_all = {
    Name        = "jykim-ec2-bastion"
  }

  tenancy       = "default"

  subnet_id     = aws_subnet.jykim-public-subnet1.id
  vpc_security_group_ids = [aws_security_group.jykim-sg-bastion.id]

  
}

