data "okta_apps" "apps_lookup" {
  for_each = var.apps_lookup

  active_only         = each.value.active_only
  include_non_deleted = each.value.include_non_deleted
  label               = each.value.label
  label_prefix        = each.value.label_prefix
  q                   = each.value.q
  use_optimization    = each.value.use_optimization
}

