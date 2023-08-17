terraform {
  required_providers {
    azurerm = {
      source          = "hashicorp/azurerm"
      version         = "=3.0.0"
    }
  }
}

// terraform {
//   required_providers {
//     azurerm = {
//       source = "hashicorp/azurerm"
//       version         = "=3.0.0"
//     }
//     backend "azurerm" {
//       tenant_id                = "15ccb6d1-d335-4996-b6f9-7b6925f08121"
//       subscription_id          = "37ed9c9a-0d39-4823-a06c-e8121b935f89"
//       resource_group_name      = "Testresourcegroup1"
//       storage_account_name     = "tfstatestoracc"
//       container_name           = "tfstatecontainer"
//       key                      = "terraform.tfstate"
//     }
//   }
// }


provider "azurerm" {
  skip_provider_registration = "true"
  subscription_id            = "a6c03ad9-19b6-44da-9bfd-60a12d0e2ea8"
  tenant_id                  = "10af2277-49af-4f54-9c7d-709259f96c76"
  client_id                  = "98e1f53f-0698-4bec-b960-82df79efa915"
  client_secret              = "FWb8Q~W3HtlYAJEDPa3eF2PBjNT6e~hWARVZKc~k"
  features {}
}

#provider "azurerm" {
#  features {
#    key_vault {
#      purge_soft_delete_on_destroy    = true
#      recover_soft_deleted_key_vaults = true
#    }
#  }
#}
data azurerm_client_config current {}

output current_client_config {
    value = data.azurerm_client_config.current
}