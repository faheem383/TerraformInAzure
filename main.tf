resource "azurerm_resource_group" "example_rg" {
  name     = "example-resource-group"
  location = "East US"
}

resource "azurerm_storage_account" "example_storage" {
  name                     = "examplestoracct123"
  resource_group_name      = azurerm_resource_group.example_rg.name
  location                 = azurerm_resource_group.example_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
