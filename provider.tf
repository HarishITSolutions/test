provider "azurerm" {
  features {}
}
data azurerm_client_config current {}

output current_client_config {
    value = data.azurerm_client_config.current
}