variable "rabbitmq_secret_backend_roles" {
  description = <<EOT
Map of rabbitmq_secret_backend_roles, attributes below
Required:
    - backend
    - name
Optional:
    - namespace
    - tags
    - vhost (block):
        - configure (required)
        - host (required)
        - read (required)
        - write (required)
    - vhost_topic (block):
        - host (required)
        - vhost (optional, block):
            - read (required)
            - topic (required)
            - write (required)
EOT

  type = map(object({
    backend   = string
    name      = string
    namespace = optional(string)
    tags      = optional(string)
    vhost = optional(list(object({
      configure = string
      host      = string
      read      = string
      write     = string
    })))
    vhost_topic = optional(list(object({
      host = string
      vhost = optional(list(object({
        read  = string
        topic = string
        write = string
      })))
    })))
  }))
}

