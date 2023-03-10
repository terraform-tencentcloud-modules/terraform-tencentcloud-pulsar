output "instance_id" {
  description = "ID of the resource."
  value       = tencentcloud_tdmq_instance.this[0].id
}