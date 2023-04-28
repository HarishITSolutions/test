output "policy_definition_id" {
  value       = azurerm_policy_definition.policy.*.id
  description = "Azure Policy definition id"
}

output "policy_definition_name" {
  value       = azurerm_policy_definition.policy.*.name
  description = "Azure Policy definition name"
}
