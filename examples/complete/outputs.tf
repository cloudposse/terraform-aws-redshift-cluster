output "id" {
  description = "The Redshift Cluster ID"
  value       = module.redshift_cluster.id
}

output "arn" {
  description = "Amazon Resource Name (ARN) of cluster"
  value       = module.redshift_cluster.arn
}

output "cluster_identifier" {
  description = "The Cluster Identifier"
  value       = module.redshift_cluster.cluster_identifier
}

output "cluster_revision_number" {
  description = "The specific revision number of the database in the cluster"
  value       = module.redshift_cluster.cluster_revision_number
}

output "cluster_subnet_group_name" {
  description = "The name of a cluster subnet group to be associated with this cluster"
  value       = module.redshift_cluster.cluster_subnet_group_name
}

output "cluster_parameter_group_name" {
  description = "The name of the parameter group to be associated with this cluster"
  value       = module.redshift_cluster.cluster_parameter_group_name
}

output "port" {
  description = "The Port the cluster responds on"
  value       = module.redshift_cluster.port
}

output "dns_name" {
  description = "The DNS name of the cluster"
  value       = module.redshift_cluster.dns_name
}

output "vpc_security_group_ids" {
  description = "The VPC security group Ids associated with the cluster"
  value       = module.redshift_cluster.vpc_security_group_ids
}

output "cluster_security_groups" {
  description = "The security groups associated with the cluster"
  value       = module.redshift_cluster.cluster_security_groups
}

output "endpoint" {
  description = "The connection endpoint"
  value       = module.redshift_cluster.endpoint
}

output "database_name" {
  description = "The name of the default database in the Cluster"
  value       = module.redshift_cluster.database_name
}

output "node_type" {
  description = "The type of nodes in the cluster"
  value       = module.redshift_cluster.node_type
}

output "cluster_type" {
  description = "The cluster type"
  value       = module.redshift_cluster.cluster_type
}

output "redshift_subnet_group_arn" {
  description = "Amazon Resource Name (ARN) of the Redshift Subnet group name"
  value       = module.redshift_cluster.redshift_subnet_group_arn
}

output "redshift_subnet_group_id" {
  description = "The Redshift Subnet Group ID"
  value       = module.redshift_cluster.redshift_subnet_group_id
}

output "redshift_parameter_group_arn" {
  description = "Amazon Resource Name (ARN) of the Redshift parameter group"
  value       = module.redshift_cluster.redshift_parameter_group_arn
}

output "redshift_parameter_group_id" {
  description = "The Redshift parameter group ID"
  value       = module.redshift_cluster.redshift_parameter_group_id
}

output "vpc_cidr" {
  value       = module.vpc.vpc_cidr_block
  description = "VPC CIDR"
}

output "public_subnet_cidrs" {
  value       = module.subnet.public_subnet_cidrs
  description = "Public subnet CIDR blocks"
}

output "private_subnet_cidrs" {
  value       = module.subnet.private_subnet_cidrs
  description = "Private subnet CIDR blocks"
}
