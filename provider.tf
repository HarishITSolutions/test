#provide configuration details for the azure terraform provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      #version = "~>3.23.0"
    }
  }
}
provider "azurerm" {
  skip_provider_registration = "true"

  features {}
}


