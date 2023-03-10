resource "tencentcloud_tdmq_role" "this" {
  count = var.create_pulsar_role ? 1 : 0

  cluster_id = var.cluster_id
  remark     = var.remark
  role_name  = var.role_name
}

resource "tencentcloud_tdmq_namespace_role_attachment" "this" {
  count = var.create_pulsar_namespace_role ? 1 : 0

  cluster_id  = var.cluster_id
  environ_id  = var.environ_id
  permissions = var.permissions
  role_name   = var.role_name
}