# Pulsar Topic - Tencent Cloud Pulsar Terraform Module

## Usage

```hcl
module "pulsar_topic" {
  source  = "terraform-tencentcloud-modules/pulsar/tencentcloud//modules/pulsar_topic"
  # version = "~> 1.0"    # you can specify the version of module here
  # insert the required variables here
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cluster_id | The cluster id of pulsar. | string | "" | yes |
| environ_id | The name of tdmq namespace. | string | "" | yes |
| create_pulsar_topic | Whether to create pulsar topic. | bool | true | no |
| partitions | The partitions of topic. | number | 1 | yes |
| topic_name | The name of topic to be created. | string | "" | yes |
| topic_type | The type of topic. | number | 0 | no |
| remark | Description of the topic. | string | "" | no |


## Outputs

| Name | Description |
|------|-------------|
| topic_id | The topic id of pulsar. | 
| create_time | Creation time of resource. | 


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
