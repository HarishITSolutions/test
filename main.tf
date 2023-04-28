module "policy" {
  source              = "../../"
  policy_manner       = "Policy"
  policy_name         = "test"
  policy_type         = "Custom"
  mode                = "All"
  policy_display_name = "test policy"
  policy_rule = {
    "if" : {
      "not" : {
        "field" : "location"
        "in" : "[parameters('allowedLocations')]"
      }
    },
    "then" : {
      "effect" : "deny"
    }
  }
  policy_parameters = {
    "allowedLocations" : {
      "type" : "Array",
      "metadata" : {
        "description" : "The list of allowed locations for resources.",
        "displayName" : "Allowed locations",
        "strongType" : "location"
      }
    }
  }
  metadata = {
    "category" : "General"
  }

  policy_def_scope_type  = "subscription"
  policy_assignment_name = "testassign"
  subscription_id        = "/subscriptions/37ed9c9a-0d39-4823-a06c-e8121b935f89"
  assignment_location    = "eastus"
  assignment_parameters = {
    "allowedLocations" : {
      "value" : ["West Europe"]
    }
  }
}