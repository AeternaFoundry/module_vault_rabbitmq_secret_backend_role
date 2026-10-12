output "rabbitmq_secret_backend_roles_id" {
  description = "Map of id values across all rabbitmq_secret_backend_roles, keyed the same as var.rabbitmq_secret_backend_roles except keys with no id are omitted"
  value       = { for k, v in vault_rabbitmq_secret_backend_role.rabbitmq_secret_backend_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "rabbitmq_secret_backend_roles_backend" {
  description = "Map of backend values across all rabbitmq_secret_backend_roles, keyed the same as var.rabbitmq_secret_backend_roles except keys with no backend are omitted"
  value       = { for k, v in vault_rabbitmq_secret_backend_role.rabbitmq_secret_backend_roles : k => v.backend if v.backend != null && length(v.backend) > 0 }
}
output "rabbitmq_secret_backend_roles_name" {
  description = "Map of name values across all rabbitmq_secret_backend_roles, keyed the same as var.rabbitmq_secret_backend_roles except keys with no name are omitted"
  value       = { for k, v in vault_rabbitmq_secret_backend_role.rabbitmq_secret_backend_roles : k => v.name if v.name != null && length(v.name) > 0 }
}
output "rabbitmq_secret_backend_roles_namespace" {
  description = "Map of namespace values across all rabbitmq_secret_backend_roles, keyed the same as var.rabbitmq_secret_backend_roles except keys with no namespace are omitted"
  value       = { for k, v in vault_rabbitmq_secret_backend_role.rabbitmq_secret_backend_roles : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "rabbitmq_secret_backend_roles_tags" {
  description = "Map of tags values across all rabbitmq_secret_backend_roles, keyed the same as var.rabbitmq_secret_backend_roles except keys with no tags are omitted"
  value       = { for k, v in vault_rabbitmq_secret_backend_role.rabbitmq_secret_backend_roles : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "rabbitmq_secret_backend_roles_vhost" {
  description = "Map of vhost values across all rabbitmq_secret_backend_roles, keyed the same as var.rabbitmq_secret_backend_roles except keys with no vhost are omitted"
  value       = { for k, v in vault_rabbitmq_secret_backend_role.rabbitmq_secret_backend_roles : k => v.vhost if v.vhost != null && length(v.vhost) > 0 }
}
output "rabbitmq_secret_backend_roles_vhost_topic" {
  description = "Map of vhost_topic values across all rabbitmq_secret_backend_roles, keyed the same as var.rabbitmq_secret_backend_roles except keys with no vhost_topic are omitted"
  value       = { for k, v in vault_rabbitmq_secret_backend_role.rabbitmq_secret_backend_roles : k => v.vhost_topic if v.vhost_topic != null && length(v.vhost_topic) > 0 }
}

