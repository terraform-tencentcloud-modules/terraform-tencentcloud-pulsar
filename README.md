# TencentCloud Pulsar Module for Terraform

## terraform-tencentcloud-mysql

A terraform module used to create TencentCloud pulsar instance, namespace, topic, role and authorization role permissions.

The following resources are included.

* [Pulsar Instance](https://registry.terraform.io/providers/tencentcloudstack/tencentcloud/latest/docs/resources/tdmq_instance.html)
* [Pulsar Namespace](https://registry.terraform.io/providers/tencentcloudstack/tencentcloud/latest/docs/resources/tdmq_namespace.html)
* [Pulsar Topic](https://registry.terraform.io/providers/tencentcloudstack/tencentcloud/latest/docs/resources/tdmq_topic.html)
* [Pulsar Role](https://registry.terraform.io/providers/tencentcloudstack/tencentcloud/latest/docs/resources/tdmq_role.html)
* [Pulsar Namespace Role Attachment](https://registry.terraform.io/providers/tencentcloudstack/tencentcloud/latest/docs/resources/tdmq_namespace_role_attachment.html)

## Usage

```hcl
module "pulsar" {
  source = "terraform-tencentcloud-modules/pulsar/tencentcloud"

  #################
  # Pulsar Instance
  #################
  cluster_name = "test"
  instance_remark = "create instance test"
  tags = {}

  ##################
  # Pulsar Namespace
  ##################
  environ_name = "environ_name_test"
  msg_ttl = 100
  namespace_remark = "create namespace test"
  retention_policy = {}

  #############
  # Pulsar Role
  #############
  role_name   = "test_role"
  role_remark = "create role test"

  #####################################
  # Pulsar Namespace Role Authorization
  #####################################
  environ_id  = "environ_name_test"
  permissions = ["produce", "consume"]

  ##############
  # pulsar Topic
  ##############
  partitions = 2
  topic_name = "test_topic"
  topic_type = 0
  topic_remark = "create topic test"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create_pulsar_instance | Whether to create pulsar instance. | bool | true | no |
| create_pulsar_namespace | Whether to create pulsar namespace. | bool | true | no |
| create_pulsar_topic | Whether to create pulsar topic. | bool | true | no |
| create_pulsar_role | Whether to create pulsar role. | bool | true | no |
| create_pulsar_namespace_role | Whether to create pulsar namespace role. | bool | true | no |
| cluster_name | The name of tdmq cluster to be created. | string | "" | yes |
| bind_cluster_id | The Dedicated Cluster Id. | number | "" | no |
| instance_remark | Description of the tdmq cluster. | string | "" | no |
| tags | Tag description list of the cluster. | map(string) | {} | no |
| environ_name | The name of namespace to be created. | string | "" | yes |
| msg_ttl | The expiration time of unconsumed message. | number | 60 | yes |
| namespace_remark | Description of the namespace. | string | "" | no |
| retention_policy | The Policy of message to retain. | map(number) | {} | no |
| permissions | The permissions of tdmq role. | list(string) | [] | no | 
| role_remark | The description of tdmq role. | string | "" | no |
| role_name | The name of tdmq role. | string | "" | yes |
| partitions | The partitions of topic. | number | 1 | yes |
| topic_name | The name of topic to be created. | string | "" | yes |
| topic_type | The type of topic. | number | 0 | no |
| topic_remark | Description of the topic. | string | "" | no |

## Outputs

| Name | Description |
|------|-------------|
| cluster_id | The cluster id of pulsar. | 
| namespace_id | The namespace id of pulsar. |
| topic_id | The topic id of pulsar. |
| role_id | The role id of pulsar. |
| namespace_role_id | The id of role authorization. |
| create_time | Creation time of resource. |


## Authors

Created and maintained by [TencentCloud](https://github.com/tencentcloudstack/terraform-provider-tencentcloud)

## License

Mozilla Public License Version 2.0.
See LICENSE for full details.