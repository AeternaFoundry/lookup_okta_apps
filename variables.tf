variable "apps_lookup" {
  description = <<EOT
Map of apps_lookup, attributes below
Optional:
    - active_only
    - include_non_deleted
    - label
    - label_prefix
    - q
    - use_optimization
EOT

  type = map(object({
    active_only         = optional(bool)
    include_non_deleted = optional(bool)
    label               = optional(string)
    label_prefix        = optional(string)
    q                   = optional(string)
    use_optimization    = optional(bool)
  }))
}

