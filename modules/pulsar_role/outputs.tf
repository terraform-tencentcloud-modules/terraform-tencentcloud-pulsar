output "role_id" {
  description = "ID of the resource."
  value       = tencentcloud_tdmq_role.this[0].id
}

output "namespace_role_id" {
  description = "ID of the resource."
  value       = tencentcloud_tdmq_namespace_role_attachment.this[0].id
}

output "create_time" {
  description = "Creation time of resource."
  value       = tencentcloud_tdmq_namespace_role_attachment.this[0].create_time
}