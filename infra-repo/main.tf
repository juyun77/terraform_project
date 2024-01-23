module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "jykim-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-0624676a2f96b20c0"

  private_subnets = ["subnet-0220d81c779718c0c", "subnet-05761b019090b97a9"]
  public_subnets  = ["subnet-055730a1eef28f4cf", "subnet-08a76f98b880aee75"]
}