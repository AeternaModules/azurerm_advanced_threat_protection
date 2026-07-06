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
  # --- Unconfirmed validation candidates, derived from azurerm_advanced_threat_protection's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: target_resource_id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: target_resource_id
  #   source:    [from azure.ValidateResourceID] err != nil
}

