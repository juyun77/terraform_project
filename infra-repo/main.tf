module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "jykim-cluster"
  cluster_version = "1.28"
  vpc_id = "vpc-00da4c5f837bcb557"

  private_subnets = ["subnet-0de6cfacf5bf294c0", "subnet-00cfad50219c647e5"]
  public_subnets  = ["subnet-09c355ef67ee5d779", "subnet-03549a56b8aac6a86"]
}