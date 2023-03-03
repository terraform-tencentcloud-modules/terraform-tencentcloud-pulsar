output "cluster_id" {
  description = "The cluster id of pulsar."
  value       = tencentcloud_tdmq_instance.this[0].id
}

output "namespace_id" {
  description = "The namespace id of pulsar."
  value       = tencentcloud_tdmq_namespace.this[0].id
}

output "namespace_role_id" {
  description = "ID of the resource."
  value       = tencentcloud_tdmq_namespace_role_attachment.this[0].id
}

output "role_id" {
  description = "The role id of pulsar."
  value       = tencentcloud_tdmq_role.this[0].id
}

output "topic_id" {
  description = "The topic id of pulsar."
  value       = tencentcloud_tdmq_topic.this[0].id
}

output "create_time" {
  description = "Creation time of resource."
  value       = tencentcloud_tdmq_topic.this[0].create_time
}