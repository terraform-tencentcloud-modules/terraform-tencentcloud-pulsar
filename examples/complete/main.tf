provider "tencentcloud" {
  region = var.region
}

module "pulsar" {
  source = "../.."

  # pulsar instance
  cluster_name    = "test"
  instance_remark = "create instance test"
  tags            = {}

  # pulsar namespace
  environ_name     = "environ_name_test"
  msg_ttl          = 100
  namespace_remark = "create namespace test"
  retention_policy = {}

  # pulsar role
  role_name   = "test_role"
  role_remark = "create role test"

  # pulsar namespace role authorization
  permissions = ["produce", "consume"]

  # pulsar topic
  partitions   = 2
  topic_name   = "test_topic"
  topic_type   = 0
  topic_remark = "create topic test"

}
