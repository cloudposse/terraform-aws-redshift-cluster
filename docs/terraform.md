<!-- markdownlint-disable -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 2.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_this"></a> [this](#module\_this) | cloudposse/label/null | 0.24.1 |

## Resources

| Name | Type |
|------|------|
| [aws_redshift_cluster.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/redshift_cluster) | resource |
| [aws_redshift_parameter_group.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/redshift_parameter_group) | resource |
| [aws_redshift_subnet_group.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/redshift_subnet_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_tag_map"></a> [additional\_tag\_map](#input\_additional\_tag\_map) | Additional tags for appending to tags\_as\_list\_of\_maps. Not added to `tags`. | `map(string)` | `{}` | no |
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password) | (Required unless a snapshot\_identifier is provided) Password for the master DB user | `string` | `""` | no |
| <a name="input_admin_user"></a> [admin\_user](#input\_admin\_user) | (Required unless a snapshot\_identifier is provided) Username for the master DB user | `string` | `"admin"` | no |
| <a name="input_attributes"></a> [attributes](#input\_attributes) | Additional attributes (e.g. `1`) | `list(string)` | `[]` | no |
| <a name="input_automated_snapshot_retention_period"></a> [automated\_snapshot\_retention\_period](#input\_automated\_snapshot\_retention\_period) | The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled | `number` | `1` | no |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | Optional parameter to place Amazon Redshift cluster instances in a specific availability zone. If left empty, will place randomly | `string` | `null` | no |
| <a name="input_cluster_identifier"></a> [cluster\_identifier](#input\_cluster\_identifier) | The Redshift Cluster Identifier. Must be a lower case string. Will use generated label ID if not supplied | `string` | `""` | no |
| <a name="input_cluster_parameters"></a> [cluster\_parameters](#input\_cluster\_parameters) | List of Redshift parameters to apply | <pre>list(object({<br>    name  = string<br>    value = string<br>  }))</pre> | `[]` | no |
| <a name="input_cluster_type"></a> [cluster\_type](#input\_cluster\_type) | The cluster type to use. Either `single-node` or `multi-node` | `string` | `"single-node"` | no |
| <a name="input_context"></a> [context](#input\_context) | Single object for setting entire context at once.<br>See description of individual variables for details.<br>Leave string and numeric variables as `null` to use default value.<br>Individual variable settings (non-null) override settings in context object,<br>except for attributes, tags, and additional\_tag\_map, which are merged. | `any` | <pre>{<br>  "additional_tag_map": {},<br>  "attributes": [],<br>  "delimiter": null,<br>  "enabled": true,<br>  "environment": null,<br>  "id_length_limit": null,<br>  "label_key_case": null,<br>  "label_order": [],<br>  "label_value_case": null,<br>  "name": null,<br>  "namespace": null,<br>  "regex_replace_chars": null,<br>  "stage": null,<br>  "tags": {}<br>}</pre> | no |
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | The name of the first database to be created when the cluster is created | `string` | `"dev"` | no |
| <a name="input_default_security_group"></a> [default\_security\_group](#input\_default\_security\_group) | Specifies whether or not to create default security group for The Amazon Redshift cluster | `bool` | `true` | no |
| <a name="input_delimiter"></a> [delimiter](#input\_delimiter) | Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes`.<br>Defaults to `-` (hyphen). Set to `""` to use no delimiter at all. | `string` | `null` | no |
| <a name="input_elastic_ip"></a> [elastic\_ip](#input\_elastic\_ip) | The Elastic IP (EIP) address for the cluster | `string` | `null` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Set to false to prevent the module from creating any resources | `bool` | `null` | no |
| <a name="input_encrypted"></a> [encrypted](#input\_encrypted) | Specifies whether the cluster is encrypted at rest | `bool` | `false` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | The version of the Amazon Redshift engine to use | `string` | `"1.0"` | no |
| <a name="input_enhanced_vpc_routing"></a> [enhanced\_vpc\_routing](#input\_enhanced\_vpc\_routing) | If true , enhanced VPC routing is enabled | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment, e.g. 'uw2', 'us-west-2', OR 'prod', 'staging', 'dev', 'UAT' | `string` | `null` | no |
| <a name="input_final_snapshot_identifier"></a> [final\_snapshot\_identifier](#input\_final\_snapshot\_identifier) | The identifier of the final snapshot that is to be created immediately before deleting the cluster. If this parameter is provided, `skip_final_snapshot` must be `false` | `string` | `null` | no |
| <a name="input_iam_roles"></a> [iam\_roles](#input\_iam\_roles) | A list of IAM Role ARNs to associate with the cluster. A Maximum of 10 can be associated to the cluster at any time | `list(string)` | `[]` | no |
| <a name="input_id_length_limit"></a> [id\_length\_limit](#input\_id\_length\_limit) | Limit `id` to this many characters (minimum 6).<br>Set to `0` for unlimited length.<br>Set to `null` for default, which is `0`.<br>Does not affect `id_full`. | `number` | `null` | no |
| <a name="input_kms_key_arn"></a> [kms\_key\_arn](#input\_kms\_key\_arn) | The ARN for the KMS encryption key. When specifying `kms_key_arn`, `encrypted` needs to be set to `true` | `string` | `null` | no |
| <a name="input_label_key_case"></a> [label\_key\_case](#input\_label\_key\_case) | The letter case of label keys (`tag` names) (i.e. `name`, `namespace`, `environment`, `stage`, `attributes`) to use in `tags`.<br>Possible values: `lower`, `title`, `upper`.<br>Default value: `title`. | `string` | `null` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | The naming order of the id output and Name tag.<br>Defaults to ["namespace", "environment", "stage", "name", "attributes"].<br>You can omit any of the 5 elements, but at least one must be present. | `list(string)` | `null` | no |
| <a name="input_label_value_case"></a> [label\_value\_case](#input\_label\_value\_case) | The letter case of output label values (also used in `tags` and `id`).<br>Possible values: `lower`, `title`, `upper` and `none` (no transformation).<br>Default value: `lower`. | `string` | `null` | no |
| <a name="input_logging"></a> [logging](#input\_logging) | If true, enables logging information such as queries and connection attempts, for the specified Amazon Redshift cluster | `bool` | `false` | no |
| <a name="input_logging_bucket_name"></a> [logging\_bucket\_name](#input\_logging\_bucket\_name) | The name of an existing S3 bucket where the log files are to be stored. Must be in the same region as the cluster and the cluster must have read bucket and put object permissions | `string` | `null` | no |
| <a name="input_logging_s3_key_prefix"></a> [logging\_s3\_key\_prefix](#input\_logging\_s3\_key\_prefix) | The prefix applied to the log file names | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Solution name, e.g. 'app' or 'jenkins' | `string` | `null` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp' | `string` | `null` | no |
| <a name="input_node_type"></a> [node\_type](#input\_node\_type) | The node type to be provisioned for the cluster. See https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#working-with-clusters-overview | `string` | `"dc2.large"` | no |
| <a name="input_nodes"></a> [nodes](#input\_nodes) | The number of compute nodes in the cluster. This parameter is required when the ClusterType parameter is specified as multi-node | `number` | `1` | no |
| <a name="input_owner_account"></a> [owner\_account](#input\_owner\_account) | The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot | `string` | `null` | no |
| <a name="input_port"></a> [port](#input\_port) | The port number on which the cluster accepts incoming connections | `number` | `5439` | no |
| <a name="input_preferred_maintenance_window"></a> [preferred\_maintenance\_window](#input\_preferred\_maintenance\_window) | Weekly time range during which system maintenance can occur, in UTC. Format: ddd:hh24:mi-ddd:hh24:mi | `string` | `null` | no |
| <a name="input_publicly_accessible"></a> [publicly\_accessible](#input\_publicly\_accessible) | If true, the cluster can be accessed from a public network | `bool` | `true` | no |
| <a name="input_regex_replace_chars"></a> [regex\_replace\_chars](#input\_regex\_replace\_chars) | Regex to replace chars with empty string in `namespace`, `environment`, `stage` and `name`.<br>If not set, `"/[^a-zA-Z0-9-]/"` is used to remove all characters other than hyphens, letters and digits. | `string` | `null` | no |
| <a name="input_skip_final_snapshot"></a> [skip\_final\_snapshot](#input\_skip\_final\_snapshot) | Determines whether a final snapshot of the cluster is created before Amazon Redshift deletes the cluster | `bool` | `true` | no |
| <a name="input_snapshot_cluster_identifier"></a> [snapshot\_cluster\_identifier](#input\_snapshot\_cluster\_identifier) | The name of the cluster the source snapshot was created from | `string` | `null` | no |
| <a name="input_snapshot_identifier"></a> [snapshot\_identifier](#input\_snapshot\_identifier) | The name of the snapshot from which to create the new cluster | `string` | `null` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release' | `string` | `null` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of VPC subnet IDs | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. `map('BusinessUnit','XYZ')` | `map(string)` | `{}` | no |
| <a name="input_vpc_security_groups"></a> [vpc\_security\_groups](#input\_vpc\_security\_groups) | A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster. Used for EC2-VPC platform | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | Amazon Resource Name (ARN) of cluster |
| <a name="output_cluster_identifier"></a> [cluster\_identifier](#output\_cluster\_identifier) | The Cluster Identifier |
| <a name="output_cluster_parameter_group_name"></a> [cluster\_parameter\_group\_name](#output\_cluster\_parameter\_group\_name) | The name of the parameter group to be associated with this cluster |
| <a name="output_cluster_revision_number"></a> [cluster\_revision\_number](#output\_cluster\_revision\_number) | The specific revision number of the database in the cluster |
| <a name="output_cluster_security_groups"></a> [cluster\_security\_groups](#output\_cluster\_security\_groups) | The security groups associated with the cluster |
| <a name="output_cluster_subnet_group_name"></a> [cluster\_subnet\_group\_name](#output\_cluster\_subnet\_group\_name) | The name of a cluster subnet group to be associated with this cluster |
| <a name="output_cluster_type"></a> [cluster\_type](#output\_cluster\_type) | The cluster type |
| <a name="output_database_name"></a> [database\_name](#output\_database\_name) | The name of the default database in the Cluster |
| <a name="output_dns_name"></a> [dns\_name](#output\_dns\_name) | The DNS name of the cluster |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | The connection endpoint |
| <a name="output_id"></a> [id](#output\_id) | The Redshift Cluster ID |
| <a name="output_node_type"></a> [node\_type](#output\_node\_type) | The type of nodes in the cluster |
| <a name="output_port"></a> [port](#output\_port) | The Port the cluster responds on |
| <a name="output_redshift_parameter_group_arn"></a> [redshift\_parameter\_group\_arn](#output\_redshift\_parameter\_group\_arn) | Amazon Resource Name (ARN) of the Redshift parameter group |
| <a name="output_redshift_parameter_group_id"></a> [redshift\_parameter\_group\_id](#output\_redshift\_parameter\_group\_id) | The Redshift parameter group name |
| <a name="output_redshift_subnet_group_arn"></a> [redshift\_subnet\_group\_arn](#output\_redshift\_subnet\_group\_arn) | Amazon Resource Name (ARN) of the Redshift Subnet group name |
| <a name="output_redshift_subnet_group_id"></a> [redshift\_subnet\_group\_id](#output\_redshift\_subnet\_group\_id) | The Redshift Subnet group name ID |
| <a name="output_vpc_security_group_ids"></a> [vpc\_security\_group\_ids](#output\_vpc\_security\_group\_ids) | The VPC security group Ids associated with the cluster |
<!-- markdownlint-restore -->
