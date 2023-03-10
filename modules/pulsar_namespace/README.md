# Pulsar Namespace - Tencent Cloud Pulsar Terraform Module

## Usage

```hcl
module "pulsar_namespace" {
  source  = "terraform-tencentcloud-modules/pulsar/tencentcloud//modules/pulsar_namespace"
  # version = "~> 1.0"    # you can specify the version of module here
  # insert the required variables here
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cluster_id | The cluster id of pulsar. | string | "" | yes |
| create_pulsar_namespace | Whether to create pulsar namespace. | bool | true | no |
| environ_name | The name of namespace to be created. | string | "" | yes |
| msg_ttl | The expiration time of unconsumed message. | number | 60 | yes |
| namespace_remark | Description of the namespace. | string | "" | no |
| retention_policy | The Policy of message to retain. | map(number) | {} | no |


## Outputs

| Name | Description |
|------|-------------|
| namespace_id | The namespace id of pulsar. | 


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
