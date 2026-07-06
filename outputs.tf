output "advanced_threat_protections" {
  description = "All advanced_threat_protection resources"
  value       = azurerm_advanced_threat_protection.advanced_threat_protections
}
output "advanced_threat_protections_enabled" {
  description = "List of enabled values across all advanced_threat_protections"
  value       = [for k, v in azurerm_advanced_threat_protection.advanced_threat_protections : v.enabled]
}
output "advanced_threat_protections_target_resource_id" {
  description = "List of target_resource_id values across all advanced_threat_protections"
  value       = [for k, v in azurerm_advanced_threat_protection.advanced_threat_protections : v.target_resource_id]
}

