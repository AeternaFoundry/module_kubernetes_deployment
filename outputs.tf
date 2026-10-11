output "deployments_id" {
  description = "Map of id values across all deployments, keyed the same as var.deployments except keys with no id are omitted"
  value       = { for k, v in kubernetes_deployment.deployments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "deployments_metadata" {
  description = "Map of metadata values across all deployments, keyed the same as var.deployments except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_deployment.deployments : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "deployments_spec" {
  description = "Map of spec values across all deployments, keyed the same as var.deployments except keys with no spec are omitted"
  value       = { for k, v in kubernetes_deployment.deployments : k => one(v.spec) if v.spec != null && length(v.spec) > 0 }
}
output "deployments_wait_for_rollout" {
  description = "Map of wait_for_rollout values across all deployments, keyed the same as var.deployments except keys with no wait_for_rollout are omitted"
  value       = { for k, v in kubernetes_deployment.deployments : k => v.wait_for_rollout if v.wait_for_rollout != null }
}

