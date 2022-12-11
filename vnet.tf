# Generate Virtual Network
resource "azurerm_virtual_network" "Deop_Vnet" {
  name                = "${var.prefix}-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.Deop_RG.location
  resource_group_name = azurerm_resource_group.Deop_RG.name
}

#Generate Subnet
resource "azurerm_subnet" "internal" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.Deop_RG.name
  virtual_network_name = azurerm_virtual_network.Deop_Vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}


#Generate NIC
resource "azurerm_network_interface" "main" {
  name                = "${var.prefix}-nic"
  location            = azurerm_resource_group.Deop_RG.location
  resource_group_name = azurerm_resource_group.Deop_RG.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.internal.id
    private_ip_address_allocation = "Dynamic"
  }

}







