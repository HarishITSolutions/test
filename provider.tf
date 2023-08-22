terraform {
  required_providers {
    azurerm = {
      source          = "hashicorp/azurerm"
      version         = "=3.0.0"
    }
  }
}

terraform {
  backend "azurerm" {
    subscription_id          = $(subscription_id2)
    resource_group_name      = $(resource_group_name)
    storage_account_name     = $(storage_account_name)
    container_name           = $(container_name)
    key                      = $(key)
    access_key               = $(access_key)
  }
}

provider "azurerm" {
  skip_provider_registration = "true"
  subscription_id            = "a6c03ad9-19b6-44da-9bfd-60a12d0e2ea8"
  tenant_id                  = "10af2277-49af-4f54-9c7d-709259f96c76"
  client_id                  = "98e1f53f-0698-4bec-b960-82df79efa915"
  client_secret              = "FWb8Q~W3HtlYAJEDPa3eF2PBjNT6e~hWARVZKc~k"
  features {}
}
