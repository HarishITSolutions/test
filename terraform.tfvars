#policy_type   = "Custom" 
#policy_manner = "Policy" ? 1 : 0
#policy_name   = "testdevopspolicy"
#mode          = 
#policy_display_name = "testdevopspolicy"
#policy_description = "policy"
#policy_rule = {
#“if” : {
#“not” : {
#“field” : “location”
#“in” : “[parameters(‘allowedLocations’)]”
#}
#},
#“then” : {
#“effect” : “deny”
#}
#}
#policy_parameters = {
#“allowedLocations” : {
#“type” : “Array”,
#“metadata” : {
#“description” : “The list of allowed locations for resource group.”,
#“displayName” : “Allowed locations”,
#“strongType” : “location”
#}
#}
#}
#metadata = {
#“category” : “General”
#}
#


policy_manner = Policy
policy_name = restrictregion
policy_type = Custom
mode = All
policy_display_name = restrictregion
policy_rule = {
“if” : {
“not” : {
“field” : “location”
“in” : “[parameters(‘allowedLocations’)]”
}
},
“then” : {
“effect” : “deny”
}
}
policy_parameters = {
“allowedLocations” : {
“type” : “Array”,
“metadata” : {
“description” : “The list of allowed locations for resource group.”,
“displayName” : “Allowed locations”,
“strongType” : “location”
}
}
}
metadata = {
“category” : “General”
}
policy_def_scope_type = resource-group
policy_assignment_name = assignment
resource_group_id = /subscriptions/37ed9c9a-0d39-4823-a06c-e8121b935f89/resourceGroups/Testresourcegroup1
assignment_location = eastus
assignment_parameters = {
“allowedLocations” : {
“value” : [“West Europe”]
}
}
}