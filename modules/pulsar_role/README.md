# Pulsar Role - Tencent Cloud Pulsar Terraform Module

## Usage

```hcl
module "pulsar_role" {
  source  = "terraform-tencentcloud-modules/pulsar/tencentcloud//modules/pulsar_role"
  # version = "~> 1.0"    # you can specify the version of module here
  # insert the required variables here
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create_pulsar_role | Whether to create pulsar role. | bool | true | no |
| create_pulsar_namespace_role | Whether to create pulsar namespace role. | bool | true | no |
| cluster_id | The cluster id of pulsar. | string | "" | yes |
| remark | The description of tdmq role. | string | "" | no |
| role_name | The name of tdmq role. | string | "" | yes |
| environ_id | The name of tdmq namespace. | string | "" | yes | 
| permissions | The permissions of tdmq role. | list(string) | [] | yes |


## Outputs

| Name | Description |
|------|-------------|
| role_id | The role id of pulsar. |
| namespace_role_id | The id of role authorization. |
| create_time | Creation time of resource. |


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
