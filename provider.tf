terraform {
  required_providers {
    azurerm = {
      source          = "hashicorp/azurerm"
      version         = "=3.0.0"
    }
  }
}


// provider "azurerm" {
//   skip_provider_registration = "true"
//   subscription_id            = "a6c03ad9-19b6-44da-9bfd-60a12d0e2ea8"
//   tenant_id                  = "10af2277-49af-4f54-9c7d-709259f96c76"
//   client_id                  = "98e1f53f-0698-4bec-b960-82df79efa915"
//   client_secret              = "FWb8Q~W3HtlYAJEDPa3eF2PBjNT6e~hWARVZKc~k"
//   features {}
// }

provider "azurerm" {
  skip_provider_registration = "true"

  features {}
}



// data azurerm_client_config current {}

// output current_client_config {
//     value = data.azurerm_client_config.current
// }