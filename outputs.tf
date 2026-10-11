output "organizations_id" {
  description = "Map of id values across all organizations, keyed the same as var.organizations except keys with no id are omitted"
  value       = { for k, v in grafana_organization.organizations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organizations_admin_user" {
  description = "Map of admin_user values across all organizations, keyed the same as var.organizations except keys with no admin_user are omitted"
  value       = { for k, v in grafana_organization.organizations : k => v.admin_user if v.admin_user != null && length(v.admin_user) > 0 }
}
output "organizations_admins" {
  description = "Map of admins values across all organizations, keyed the same as var.organizations except keys with no admins are omitted"
  value       = { for k, v in grafana_organization.organizations : k => v.admins if v.admins != null && length(v.admins) > 0 }
}
output "organizations_create_users" {
  description = "Map of create_users values across all organizations, keyed the same as var.organizations except keys with no create_users are omitted"
  value       = { for k, v in grafana_organization.organizations : k => v.create_users if v.create_users != null }
}
output "organizations_editors" {
  description = "Map of editors values across all organizations, keyed the same as var.organizations except keys with no editors are omitted"
  value       = { for k, v in grafana_organization.organizations : k => v.editors if v.editors != null && length(v.editors) > 0 }
}
output "organizations_name" {
  description = "Map of name values across all organizations, keyed the same as var.organizations except keys with no name are omitted"
  value       = { for k, v in grafana_organization.organizations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "organizations_org_id" {
  description = "Map of org_id values across all organizations, keyed the same as var.organizations except keys with no org_id are omitted"
  value       = { for k, v in grafana_organization.organizations : k => v.org_id if v.org_id != null }
}
output "organizations_users_without_access" {
  description = "Map of users_without_access values across all organizations, keyed the same as var.organizations except keys with no users_without_access are omitted"
  value       = { for k, v in grafana_organization.organizations : k => v.users_without_access if v.users_without_access != null && length(v.users_without_access) > 0 }
}
output "organizations_viewers" {
  description = "Map of viewers values across all organizations, keyed the same as var.organizations except keys with no viewers are omitted"
  value       = { for k, v in grafana_organization.organizations : k => v.viewers if v.viewers != null && length(v.viewers) > 0 }
}

