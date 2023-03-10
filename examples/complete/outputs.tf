output "cluster_id" {
  description = "The cluster id of pulsar."
  value       = module.pulsar.cluster_id
}

output "namespace_id" {
  description = "The namespace id of pulsar."
  value       = module.pulsar.namespace_id
}

output "namespace_role_id" {
  description = "The id of role authorization."
  value       = module.pulsar.namespace_role_id
}

output "role_id" {
  description = "The role id of pulsar."
  value       = module.pulsar.role_id
}

output "topic_id" {
  description = "The topic id of pulsar."
  value       = module.pulsar.topic_id
}

output "create_time" {
  description = "Creation time of resource."
  value       = module.pulsar.create_time
}