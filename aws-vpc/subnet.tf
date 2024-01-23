############ Public Subnets ############

resource "aws_subnet" "jykim-public-subnet1" {

  depends_on = [
    aws_vpc.jykim-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "192.168.0.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "jykim-public-subnet1"
    "kubernetes.io/cluster/jykim-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  tags_all = {
    Name                                     = "jykim-public-subnet1"
    "kubernetes.io/cluster/jykim-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  vpc_id = aws_vpc.jykim-vpc.id
  availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "jykim-public-subnet3" {

  depends_on = [
    aws_vpc.jykim-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "192.168.16.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "jykim-public-subnet3"
    "kubernetes.io/cluster/jykim-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  tags_all = {
    Name                                     = "jykim-public-subnet3"
    "kubernetes.io/cluster/jykim-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  vpc_id = aws_vpc.jykim-vpc.id
  availability_zone = "ap-northeast-2c"
}

############ Private Subnets ############

resource "aws_subnet" "jykim-private-subnet1" {

  depends_on = [
    aws_vpc.jykim-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "192.168.32.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "jykim-private-subnet1"
    "kubernetes.io/cluster/jykim-eks-cluster" = "shared"
  }

  tags_all = {
    Name                                     = "jykim-private-subnet1"
    "kubernetes.io/cluster/jykim-eks-cluster" = "shared"
  }

  vpc_id = aws_vpc.jykim-vpc.id
  availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "jykim-private-subnet3" {

  depends_on = [
    aws_vpc.jykim-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "192.168.48.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "jykim-private-subnet3"
    "kubernetes.io/cluster/jykim-eks-cluster" = "shared"
  }

  tags_all = {
    Name                                     = "jykim-private-subnet3"
    "kubernetes.io/cluster/jykim-eks-cluster" = "shared"
  }

  vpc_id = aws_vpc.jykim-vpc.id
  availability_zone = "ap-northeast-2c"
}

resource "aws_subnet" "jykim-private-subnet2" {

  depends_on = [
    aws_vpc.jykim-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "192.168.64.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "jykim-private-subnet2"
    "kubernetes.io/cluster/jykim-eks-cluster" = "shared"
  }

  tags_all = {
    Name                                     = "jykim-private-subnet2"
    "kubernetes.io/cluster/jykim-eks-cluster" = "shared"
  }

  vpc_id = aws_vpc.jykim-vpc.id
  availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "jykim-private-subnet4" {

  depends_on = [
    aws_vpc.jykim-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "192.168.80.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "jykim-private-subnet4"
    "kubernetes.io/cluster/jykim-eks-cluster" = "shared"
  }

  tags_all = {
    Name                                     = "jykim-private-subnet4"
    "kubernetes.io/cluster/jykim-eks-cluster" = "shared"
  }

  vpc_id = aws_vpc.jykim-vpc.id
  availability_zone = "ap-northeast-2c"
}


