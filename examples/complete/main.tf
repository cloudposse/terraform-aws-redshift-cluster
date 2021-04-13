provider "aws" {
  region = var.region
}

module "vpc" {
  source  = "cloudposse/vpc/aws"
  version = "0.21.1"

  cidr_block = "172.19.0.0/16"

  context = module.this.context
}

module "subnet" {
  source  = "cloudposse/dynamic-subnets/aws"
  version = "0.38.1"

  availability_zones   = var.availability_zones
  vpc_id               = module.vpc.vpc_id
  igw_id               = module.vpc.igw_id
  cidr_block           = module.vpc.vpc_cidr_block
  nat_gateway_enabled  = false
  nat_instance_enabled = false

  context = module.this.context
}

module "security_group" {
  source  = "cloudposse/security-group/aws"
  version = "0.1.4"

  vpc_id = module.vpc.vpc_id
  rules = [
    {
      type        = "ingress"
      from_port   = var.port
      to_port     = var.port
      protocol    = "all"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      type        = "egress"
      from_port   = 0
      to_port     = 0
      protocol    = "all"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
  context = module.this.context
}

module "redshift_cluster" {
  source = "../.."

  subnet_ids          = module.subnet.private_subnet_ids
  vpc_security_groups = [module.vpc.vpc_default_security_group_id, module.security_group.id]

  admin_user     = var.admin_user
  admin_password = var.admin_password

  context = module.this.context
}
