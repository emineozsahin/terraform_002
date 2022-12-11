# Generate Virtual Machine
resource "azurerm_virtual_machine" "Deop_VM" {
  name                  = "${var.prefix}-vm"
  location              = azurerm_resource_group.Deop_RG.location
  resource_group_name   = azurerm_resource_group.Deop_RG.name
  network_interface_ids = [azurerm_network_interface.main.id]
  vm_size               = "Standard_DS1_v2"

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = var.vm_user_name
    admin_username = var.vm_user_name
    admin_password = var.vm_user_password
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = var.environment
  }
}