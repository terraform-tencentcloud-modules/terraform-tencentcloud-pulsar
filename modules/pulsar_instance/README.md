# Pulsar Instance - Tencent Cloud Pulsar Terraform Module

## Usage

```hcl
module "pulsar_instance" {
  source  = "terraform-tencentcloud-modules/pulsar/tencentcloud//modules/pulsar_instance"
  # version = "~> 1.0"    # you can specify the version of module here
  # insert the required variables here
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cluster_name | The name of tdmq cluster to be created. | string | "" | yes |
| create_pulsar_instance | Whether to create pulsar instance. | bool | true | no |
| bind_cluster_id | The Dedicated Cluster Id. | number | "" | no |
| remark | Description of the tdmq cluster. | string | "" | no |
| tags | Tag description list of the cluster. | map(string) | {} | no |


## Outputs

| Name | Description |
|------|-------------|
| instance_id | The instance id of pulsar. | 


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
