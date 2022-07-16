variable "cluster_identifier" {
  type        = string
  default     = ""
  description = "The Redshift Cluster Identifier. Must be a lower case string. Will use generated label ID if not supplied"
}

variable "database_name" {
  type        = string
  default     = "dev"
  description = "The name of the first database to be created when the cluster is created"
}

variable "admin_user" {
  type        = string
  default     = "admin"
  description = "Username for the master DB user. Required unless a snapshot_identifier is provided"
}

variable "admin_password" {
  type        = string
  default     = ""
  description = "Password for the master DB user. Required unless a snapshot_identifier is provided"
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

variable "subnet_ids" {
  type        = list(string)
  description = "List of VPC subnet IDs"
}

variable "vpc_security_group_ids" {
  type        = list(string)
  default     = []
  description = "A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster. Used for EC2-VPC platform"
}

variable "availability_zone" {
  type        = string
  default     = null
  description = "Optional parameter to place Amazon Redshift cluster instances in a specific availability zone. If left empty, will place randomly"
}

variable "preferred_maintenance_window" {
  type        = string
  default     = null
  description = "Weekly time range during which system maintenance can occur, in UTC. Format: ddd:hh24:mi-ddd:hh24:mi"
}

variable "cluster_parameters" {
  type = list(object({
    name  = string
    value = string
  }))
  default     = []
  description = "List of Redshift parameters to apply"
}

variable "automated_snapshot_retention_period" {
  type        = number
  default     = 1
  description = "The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled"
}

variable "port" {
  type        = number
  default     = 5439
  description = "The port number on which the cluster accepts incoming connections"
}

variable "engine_version" {
  type        = string
  default     = "1.0"
  description = "The version of the Amazon Redshift engine to use. See https://docs.aws.amazon.com/redshift/latest/mgmt/cluster-versions.html"
}

variable "number_of_nodes" {
  type        = number
  default     = 1
  description = "The number of compute nodes in the cluster. This parameter is required when the ClusterType parameter is specified as multi-node"
}

variable "publicly_accessible" {
  type        = bool
  default     = false
  description = "If true, the cluster can be accessed from a public network"
}

variable "encrypted" {
  type        = bool
  description = "Specifies whether the cluster is encrypted at rest"
  default     = false
}

variable "enhanced_vpc_routing" {
  type        = bool
  description = "If true , enhanced VPC routing is enabled"
  default     = false
}

variable "kms_key_arn" {
  type        = string
  description = "The ARN for the KMS encryption key. When specifying `kms_key_arn`, `encrypted` needs to be set to `true`"
  default     = null
}

variable "elastic_ip" {
  type        = string
  default     = null
  description = "The Elastic IP (EIP) address for the cluster"
}

variable "skip_final_snapshot" {
  type        = bool
  default     = true
  description = "Determines whether a final snapshot of the cluster is created before Amazon Redshift deletes the cluster"
}

variable "final_snapshot_identifier" {
  type        = string
  default     = null
  description = "The identifier of the final snapshot that is to be created immediately before deleting the cluster. If this parameter is provided, `skip_final_snapshot` must be `false`"
}

variable "snapshot_identifier" {
  type        = string
  default     = null
  description = "The name of the snapshot from which to create the new cluster"
}

variable "snapshot_cluster_identifier" {
  type        = string
  default     = null
  description = "The name of the cluster the source snapshot was created from"
}

variable "owner_account" {
  type        = string
  default     = null
  description = "The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot"
}

variable "iam_roles" {
  type        = list(string)
  description = "A list of IAM Role ARNs to associate with the cluster. A maximum of 10 can be associated to the cluster at any time"
  default     = []
}

variable "logging_enabled" {
  type        = bool
  default     = false
  description = "If true, enables logging information such as queries and connection attempts, for the specified Amazon Redshift cluster"
}

variable "logging_bucket_name" {
  type        = string
  default     = null
  description = "The name of an existing S3 bucket where the log files are to be stored. Must be in the same region as the cluster and the cluster must have read bucket and put object permissions"
}

variable "logging_s3_key_prefix" {
  type        = string
  default     = null
  description = "The prefix applied to the log file names"
}

variable "allow_version_upgrade" {
  type        = bool
  default     = false
  description = "Whether or not to enable major version upgrades which are applied during the maintenance window to the Amazon Redshift engine that is running on the cluster"
}

variable "availability_zone_relocation_enabled" {
  type        = bool
  default     = false
  description = "Whether or not the cluster can be relocated to another availability zone, either automatically by AWS or when requested. Available for use on clusters from the RA3 instance family"
}
