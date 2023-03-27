output "id" {
  description = "The Redshift Cluster ID"
  value       = local.enabled ? join("", aws_redshift_cluster.default[*].id) : null
}

output "arn" {
  description = "Amazon Resource Name (ARN) of cluster"
  value       = local.enabled ? join("", aws_redshift_cluster.default[*].arn) : null
}

output "cluster_identifier" {
  description = "The Cluster Identifier"
  value       = local.enabled ? join("", aws_redshift_cluster.default[*].cluster_identifier) : null
}

output "cluster_revision_number" {
  description = "The specific revision number of the database in the cluster"
  value       = local.enabled ? join("", aws_redshift_cluster.default[*].cluster_revision_number) : null
}

output "cluster_subnet_group_name" {
  description = "The name of a cluster subnet group to be associated with this cluster"
  value       = local.enabled ? join("", aws_redshift_cluster.default[*].cluster_subnet_group_name) : null
}

output "cluster_parameter_group_name" {
  description = "The name of the parameter group to be associated with this cluster"
  value       = local.enabled ? join("", aws_redshift_cluster.default[*].cluster_parameter_group_name) : null
}

output "port" {
  description = "The Port the cluster responds on"
  value       = local.enabled ? join("", aws_redshift_cluster.default[*].port) : null
}

output "dns_name" {
  description = "The DNS name of the cluster"
  value       = local.enabled ? join("", aws_redshift_cluster.default[*].dns_name) : null
}

output "vpc_security_group_ids" {
  description = "The VPC security group IDs associated with the cluster"
  value       = local.enabled ? concat([], aws_redshift_cluster.default[*].vpc_security_group_ids) : null
}

output "cluster_security_groups" {
  description = "The security groups associated with the cluster"
  value       = local.enabled ? concat([], aws_redshift_cluster.default[*].cluster_security_groups) : null
}

output "endpoint" {
  description = "The connection endpoint"
  value       = local.enabled ? join("", aws_redshift_cluster.default[*].endpoint) : null
}

output "database_name" {
  description = "The name of the default database in the Cluster"
  value       = local.enabled ? join("", aws_redshift_cluster.default[*].database_name) : null
}

output "node_type" {
  description = "The type of nodes in the cluster"
  value       = local.enabled ? join("", aws_redshift_cluster.default[*].node_type) : null
}

output "cluster_type" {
  description = "The cluster type"
  value       = local.enabled ? join("", aws_redshift_cluster.default[*].cluster_type) : null
}

output "redshift_subnet_group_arn" {
  description = "Amazon Resource Name (ARN) of the Redshift Subnet group name"
  value       = local.enabled ? join("", aws_redshift_subnet_group.default[*].arn) : null
}

output "redshift_subnet_group_id" {
  description = "The Redshift Subnet group ID"
  value       = local.enabled ? join("", aws_redshift_subnet_group.default[*].id) : null
}

output "redshift_parameter_group_arn" {
  description = "Amazon Resource Name (ARN) of the Redshift parameter group"
  value       = local.enabled ? join("", aws_redshift_parameter_group.default[*].arn) : null
}

output "redshift_parameter_group_id" {
  description = "The Redshift parameter group ID"
  value       = local.enabled ? join("", aws_redshift_parameter_group.default[*].id) : null
}
