resource "aws_iam_instance_profile" "jykim-ec2-instance-my-profile2" {
  name = "jykim-ec2-instance-my-profile2"
  path = "/"
  role = "jykim-iam-role-ec2-instance-bastion2"
}
