output "topic_id" {
  description = "ID of the resource."
  value       = tencentcloud_tdmq_topic.this[0].id
}

output "create_time" {
  description = "Creation time of resource."
  value       = tencentcloud_tdmq_topic.this[0].create_time
}