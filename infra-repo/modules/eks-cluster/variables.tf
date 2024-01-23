variable "cluster_name" {
    description = "Your EKS cluster name"
    default = "jykim-cluster"
}
variable "cluster_version" {
}
# variable "vpc_id" {
# }
variable "public_subnets" {
}
# variable "private_subnets" {
# }

# variable "eks_cluster_name" {
#   description = "Your EKS cluster name"
#   default = "fast-cluster"
# }

variable "vpc_id" {
  description =  "Your VPC ID"
  default = "vpc-0624676a2f96b20c0"
}


variable "private_subnets" {
  description = "Your private subnets for EKS worker node"
  type = list
  default = ["subnet-0de6cfacf5bf294c0", "subnet-00cfad50219c647e5"]
}

variable "account_number" {
  description = "Your AWS account number. 12 digit"
  default = "194453983284"
}
