resource "tencentcloud_tdmq_topic" "this" {
  count = var.create_pulsar_topic ? 1 : 0

  cluster_id = var.cluster_id
  environ_id = var.environ_id
  partitions = var.partitions
  topic_name = var.topic_name
  topic_type = var.topic_type
  remark     = var.remark
}