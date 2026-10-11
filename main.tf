resource "grafana_organization" "organizations" {
  for_each = var.organizations

  name                 = each.value.name
  admin_user           = each.value.admin_user
  admins               = each.value.admins
  create_users         = each.value.create_users
  editors              = each.value.editors
  users_without_access = each.value.users_without_access
  viewers              = each.value.viewers
}

