# data "http" "my_ip" {
#   url = "http://myip.dnsomatic.com"
# }

# locals {
#   my_ip = trimspace(data.http.my_ip.body)
# }

# resource "aws_security_group_rule" "sg-def-22" {
#   type              = "ingress"
#   from_port         = 443
#   to_port           = 443
#   protocol          = "tcp"
#   cidr_blocks       = [data.aws_ssm_parameter.eks-cidr.value]
#   security_group_id = "95.91.245.134/32"
# }

# resource "aws_security_group_rule" "sg-def-eks-all" {
#   type              = "ingress"
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
#   cidr_blocks       = [data.aws_ssm_parameter.eks-cidr.value]
#   security_group_id = "95.91.245.134/32"
# }

# output "my_ip" {
#   value = local.my_ip
# }
