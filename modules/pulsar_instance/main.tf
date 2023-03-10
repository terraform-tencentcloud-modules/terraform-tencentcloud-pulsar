resource "tencentcloud_tdmq_instance" "this" {
  count = var.create_pulsar_instance ? 1 : 0

  cluster_name = var.cluster_name
  remark       = var.remark
  tags         = var.tags
}