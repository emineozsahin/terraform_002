
# Generate Storage Account
resource "azurerm_storage_account" "deopsa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.Deop_RG.name
  location                 = azurerm_resource_group.Deop_RG.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = var.environment
  }
}


