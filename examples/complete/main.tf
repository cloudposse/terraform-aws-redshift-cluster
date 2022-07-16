provider "aws" {
  region = var.region
}

module "vpc" {
  source  = "cloudposse/vpc/aws"
  version = "1.1.0"

  ipv4_primary_cidr_block = "172.19.0.0/16"

  context = module.this.context
}

module "subnet" {
  source  = "cloudposse/dynamic-subnets/aws"
  version = "2.0.2"

  availability_zones   = var.availability_zones
  vpc_id               = module.vpc.vpc_id
  igw_id               = [module.vpc.igw_id]
  ipv4_cidr_block      = [module.vpc.vpc_cidr_block]
  nat_gateway_enabled  = false
  nat_instance_enabled = false

  context = module.this.context
}

module "security_group" {
  source  = "cloudposse/security-group/aws"
  version = "1.0.1"

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

  subnet_ids             = module.subnet.private_subnet_ids
  vpc_security_group_ids = [module.vpc.vpc_default_security_group_id, module.security_group.id]

  admin_user            = var.admin_user
  admin_password        = var.admin_password
  database_name         = var.database_name
  node_type             = var.node_type
  cluster_type          = var.cluster_type
  engine_version        = var.engine_version
  publicly_accessible   = var.publicly_accessible
  allow_version_upgrade = var.allow_version_upgrade

  context = module.this.context
}
