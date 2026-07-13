variable "advanced_threat_protections" {
  description = <<EOT
Map of advanced_threat_protections, attributes below
Required:
    - enabled
    - target_resource_id
EOT

  type = map(object({
    enabled            = bool
    target_resource_id = string
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

