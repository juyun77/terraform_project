############ bastion ec2 instance iam role ############

resource "aws_iam_role" "jykim-iam-role-ec2-instance-bastion2" {
  assume_role_policy = <<POLICY
{
   "Version":"2012-10-17",
   "Statement":[
      {
         "Effect":"Allow",
         "Principal":{
            "Federated":"arn:aws:iam::194453983284:oidc-provider/oidc.eks.ap-northeast-2.amazonaws.com/id/1C8D64F4169A65D07D4CEE7CA7081AF2"
         },
         "Action":"sts:AssumeRoleWithWebIdentity",
         "Condition":{
            "StringEquals":{
               "oidc.eks.ap-northeast-2.amazonaws.com/id/1C8D64F4169A65D07D4CEE7CA7081AF2:aud":"sts.amazonaws.com",
               "oidc.eks.ap-northeast-2.amazonaws.com/id/1C8D64F4169A65D07D4CEE7CA7081AF2:sub":"system:serviceaccount:kube-system:aws-load-balancer-controller"
            }
         }
      }
   ]
}
POLICY
  name                 = "jykim-iam-role-ec2-instance-bastion2"
  description          = "Iam role for bastion ec2 instance."
  max_session_duration = "3600"
  path                 = "/"

  tags = {
    Name        = "jykim-iam-role-ec2-instance-bastion2"
  }

  tags_all = {
    Name        = "jykim-iam-role-ec2-instance-bastion2"
  }
}

