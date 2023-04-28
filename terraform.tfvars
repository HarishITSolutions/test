policy_type   = "Custom" 
policy_manner = "Policy" ? 1 : 0
policy_name   = "testdevopspolicy"
mode          = 
policy_display_name = "testdevopspolicy"
policy_description = "policy"
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
