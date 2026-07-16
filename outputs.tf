output "advanced_threat_protections_id" {
  description = "Map of id values across all advanced_threat_protections, keyed the same as var.advanced_threat_protections"
  value       = { for k, v in azurerm_advanced_threat_protection.advanced_threat_protections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "advanced_threat_protections_enabled" {
  description = "Map of enabled values across all advanced_threat_protections, keyed the same as var.advanced_threat_protections"
  value       = { for k, v in azurerm_advanced_threat_protection.advanced_threat_protections : k => v.enabled if v.enabled != null }
}
output "advanced_threat_protections_target_resource_id" {
  description = "Map of target_resource_id values across all advanced_threat_protections, keyed the same as var.advanced_threat_protections"
  value       = { for k, v in azurerm_advanced_threat_protection.advanced_threat_protections : k => v.target_resource_id if v.target_resource_id != null && length(v.target_resource_id) > 0 }
}

