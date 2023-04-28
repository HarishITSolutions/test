resource "azurerm_policy_definition" "policy" {
  count               = var.policy_type == "Custom" && var.policy_manner == "Policy" ? 1 : 0
  name                = var.policy_name
  policy_type         = var.policy_type
  mode                = var.mode
  display_name        = var.policy_display_name
  description         = var.policy_description
  policy_rule         = jsonencode(var.policy_rule)
  parameters          = jsonencode(var.policy_parameters)
  metadata            = jsonencode(var.metadata)
  management_group_id = var.management_group_id
}
