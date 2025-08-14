variable "region" {
  type        = string
  description = "AWS region"
}

variable "port" {
  type        = number
  default     = 5439
  description = "The port number on which the cluster accepts incoming connections"
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones"
}

variable "admin_user" {
  type        = string
  default     = "admin"
  description = "Username for the master DB user. Required unless a snapshot_identifier is provided"
}

variable "admin_password" {
  type        = string
  description = "(Required unless a snapshot_identifier is provided) Password for the master DB user"
}

variable "database_name" {
  type        = string
  default     = "dev"
  description = "The name of the first database to be created when the cluster is created"
}

variable "node_type" {
  type        = string
  default     = "dc2.large"
  description = "The node type to be provisioned for the cluster. See https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#working-with-clusters-overview"
}

variable "cluster_type" {
  type        = string
  default     = "single-node"
  description = "The cluster type to use. Either `single-node` or `multi-node`"
}

variable "engine_version" {
  type        = string
  default     = "1.0"
  description = "The version of the Amazon Redshift engine to use. See https://docs.aws.amazon.com/redshift/latest/mgmt/cluster-versions.html"
}

variable "publicly_accessible" {
  type        = bool
  default     = false
  description = "If true, the cluster can be accessed from a public network"
}

variable "allow_version_upgrade" {
  type        = bool
  default     = false
  description = "Whether or not to enable major version upgrades which are applied during the maintenance window to the Amazon Redshift engine that is running on the cluster"
}
