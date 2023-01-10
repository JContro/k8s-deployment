locals {

  vpc_name = format("%s.%s_%s.vpc", var.environment, var.project, var.context)
  vpc_tags = merge(tomap({ "kubernetes.io/cluster/${local.cluster_name}" = "shared" }), local.default_tags)
}

data "aws_availability_zones" "available" {
}

module "vpc" {
  source               = "terraform-aws-modules/vpc/aws"
  version              = "3.3.0"
  name                 = local.vpc_name
  cidr                 = "10.0.0.0/16"
  azs                  = data.aws_availability_zones.available.names
  private_subnets      = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets       = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true


  tags                = local.vpc_tags
  public_subnet_tags  = merge(tomap({ "kubernetes.io/role/elb" = "1" }), local.vpc_tags)
  private_subnet_tags = merge(tomap({ "kubernetes.io/role/internal-elb" = "1" }), local.vpc_tags)
}
