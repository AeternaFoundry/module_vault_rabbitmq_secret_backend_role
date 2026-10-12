resource "vault_rabbitmq_secret_backend_role" "rabbitmq_secret_backend_roles" {
  for_each = var.rabbitmq_secret_backend_roles

  backend   = each.value.backend
  name      = each.value.name
  namespace = each.value.namespace
  tags      = each.value.tags

  dynamic "vhost" {
    for_each = each.value.vhost != null ? each.value.vhost : []
    content {
      configure = vhost.value.configure
      host      = vhost.value.host
      read      = vhost.value.read
      write     = vhost.value.write
    }
  }

  dynamic "vhost_topic" {
    for_each = each.value.vhost_topic != null ? each.value.vhost_topic : []
    content {
      host = vhost_topic.value.host
      dynamic "vhost" {
        for_each = vhost_topic.value.vhost != null ? vhost_topic.value.vhost : []
        content {
          read  = vhost.value.read
          topic = vhost.value.topic
          write = vhost.value.write
        }
      }
    }
  }
}

