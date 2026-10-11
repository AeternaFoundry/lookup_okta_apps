output "apps_lookup_active_only" {
  description = "Map of active_only values across all apps_lookup, keyed the same as var.apps_lookup except keys with no active_only are omitted"
  value       = { for k, v in data.okta_apps.apps_lookup : k => v.active_only if v.active_only != null }
}
output "apps_lookup_apps" {
  description = "Map of apps values across all apps_lookup, keyed the same as var.apps_lookup except keys with no apps are omitted"
  value       = { for k, v in data.okta_apps.apps_lookup : k => v.apps if v.apps != null && length(v.apps) > 0 }
}
output "apps_lookup_include_non_deleted" {
  description = "Map of include_non_deleted values across all apps_lookup, keyed the same as var.apps_lookup except keys with no include_non_deleted are omitted"
  value       = { for k, v in data.okta_apps.apps_lookup : k => v.include_non_deleted if v.include_non_deleted != null }
}
output "apps_lookup_label" {
  description = "Map of label values across all apps_lookup, keyed the same as var.apps_lookup except keys with no label are omitted"
  value       = { for k, v in data.okta_apps.apps_lookup : k => v.label if v.label != null && length(v.label) > 0 }
}
output "apps_lookup_label_prefix" {
  description = "Map of label_prefix values across all apps_lookup, keyed the same as var.apps_lookup except keys with no label_prefix are omitted"
  value       = { for k, v in data.okta_apps.apps_lookup : k => v.label_prefix if v.label_prefix != null && length(v.label_prefix) > 0 }
}
output "apps_lookup_q" {
  description = "Map of q values across all apps_lookup, keyed the same as var.apps_lookup except keys with no q are omitted"
  value       = { for k, v in data.okta_apps.apps_lookup : k => v.q if v.q != null && length(v.q) > 0 }
}
output "apps_lookup_use_optimization" {
  description = "Map of use_optimization values across all apps_lookup, keyed the same as var.apps_lookup except keys with no use_optimization are omitted"
  value       = { for k, v in data.okta_apps.apps_lookup : k => v.use_optimization if v.use_optimization != null }
}

