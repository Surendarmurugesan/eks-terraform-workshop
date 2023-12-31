locals {
  vpc_cidr_range = "10.1.0.0/16"
  # vpc_cidr_range = lookup(var.aws_cidr, var.aws_vpc[count.index])
}

resource "aws_vpc" "vpc-10-1" {
  assign_generated_ipv6_cidr_block = false
  cidr_block                       = local.vpc_cidr_range
  enable_dns_hostnames             = false
  enable_dns_support               = true
  instance_tenancy                 = "default"
  tags = {
    "Name" = "vpc-10-1"
  }
}

resource "aws_eip" "my-eip" {
  public_ipv4_pool = "amazon"
  tags             = {}
  vpc              = true
  timeouts {}
}

resource "aws_subnet" "mypubsubnet" {
  assign_ipv6_address_on_creation = false
  availability_zone               = "eu-north-1a"
  cidr_block = cidrsubnet(aws_vpc.vpc-10-1.cidr_block, 8, 1)
  # cidr_block                      = "10.1.1.0/24"
  map_public_ip_on_launch         = false
  tags = {
    "Name" = "Public subnet 10.1"
  }
  vpc_id = aws_vpc.vpc-10-1.id

  timeouts {}
}

resource "aws_subnet" "myprivsubnet" {
  assign_ipv6_address_on_creation = false
  availability_zone               = "eu-north-1a"
  cidr_block = cidrsubnet(local.vpc_cidr_range, 8, 4)
  # cidr_block                      = "10.1.4.0/24"
  map_public_ip_on_launch         = false
  tags = {
    "Name" = "Private subnet 10.1"
  }
  vpc_id = aws_vpc.vpc-10-1.id

  timeouts {}
}



