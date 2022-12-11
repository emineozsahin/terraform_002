
# Generate Resource Group
resource "azurerm_resource_group" "Deop_RG" {
    name     = var.resource_group_name
    location = var.location
    tags     = {
        "costcenter" = "001"
        "env"        = var.environment
        "createdBy"  = var.createdBy
        }
    }

