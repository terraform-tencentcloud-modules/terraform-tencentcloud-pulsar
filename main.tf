locals {
  cluster_id = var.bind_cluster_id == "" ? tencentcloud_tdmq_instance.this[0].id : var.bind_cluster_id
}

resource "tencentcloud_tdmq_instance" "this" {
  count = var.create_pulsar_instance && var.bind_cluster_id == "" ? 1 : 0

  cluster_name = var.cluster_name
  remark       = var.instance_remark
  tags         = var.tags
}

resource "tencentcloud_tdmq_namespace" "this" {
  count = var.create_pulsar_namespace ? 1 : 0

  cluster_id       = local.cluster_id
  environ_name     = var.environ_name
  msg_ttl          = var.msg_ttl
  remark           = var.namespace_remark
  retention_policy = var.retention_policy
}

resource "tencentcloud_tdmq_role" "this" {
  count = var.create_pulsar_role ? 1 : 0

  cluster_id = local.cluster_id
  remark     = var.role_remark
  role_name  = var.role_name
}

resource "tencentcloud_tdmq_namespace_role_attachment" "this" {
  count = var.create_pulsar_namespace_role ? 1 : 0

  cluster_id  = local.cluster_id
  environ_id  = tencentcloud_tdmq_namespace.this[0].id
  permissions = var.permissions
  role_name   = tencentcloud_tdmq_role.this[0].role_name
}

resource "tencentcloud_tdmq_topic" "this" {
  count = var.create_pulsar_topic ? 1 : 0

  cluster_id = local.cluster_id
  environ_id = tencentcloud_tdmq_namespace.this[0].id
  partitions = var.partitions
  topic_name = var.topic_name
  topic_type = var.topic_type
  remark     = var.topic_remark
}