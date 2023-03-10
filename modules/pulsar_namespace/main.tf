resource "tencentcloud_tdmq_namespace" "this" {
  count = var.create_pulsar_namespace ? 1 : 0

  cluster_id       = var.cluster_id
  environ_name     = var.environ_name
  msg_ttl          = var.msg_ttl
  remark           = var.remark
  retention_policy = var.retention_policy
}