# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_route_table.rtb-0329e787bbafcb2c4:
resource "aws_route_table" "rtb-i" {
  propagating_vgws = []
  route            = []
  tags = {
    "Name" = format("eks-%s-cluster/IsolatedRouteTable", data.aws_ssm_parameter.tf-eks-cluster-name.value)
  }
  vpc_id = aws_vpc.cluster.id
}