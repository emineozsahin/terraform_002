# Save state file in the storage account
output "storage_account_name" {
    value = azurerm_storage_account.deopsa.name
    sensitive = true
    description = "state file location"
}

