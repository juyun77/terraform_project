resource "aws_eip" "jykim-elastic-ip" {
  network_border_group = "ap-northeast-2"
  public_ipv4_pool     = "amazon"

  tags = {
    Name        = "jykim-elastic-ip"
  }

  tags_all = {
    Name        = "jykim-elastic-ip"
  }


}
