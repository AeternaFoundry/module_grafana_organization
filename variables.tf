variable "organizations" {
  description = <<EOT
Map of organizations, attributes below
Required:
    - name
Optional:
    - admin_user
    - admins
    - create_users
    - editors
    - users_without_access
    - viewers
EOT

  type = map(object({
    name                 = string
    admin_user           = optional(string)
    admins               = optional(set(string))
    create_users         = optional(bool)
    editors              = optional(set(string))
    users_without_access = optional(set(string))
    viewers              = optional(set(string))
  }))
}

