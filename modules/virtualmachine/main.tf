locals {
  vm_name = format("%s-%s", var.asset_name, var.environment)
}

  resource "azurerm_virtual_machine" "vm" {
    name                  = local.vm_name
    location              = var.location
    resource_group_name   = var.resource_group_name
    network_interface_ids = [azurerm_network_interface.nic.id]
    vm_size               = var.size

    storage_os_disk {
      name              = "${local.vm_name}-osdisk"
      caching           = "ReadWrite"
      create_option     = "FromImage"
    }

    os_profile {
      computer_name  = local.vm_name
      admin_username = var.admin_username
      admin_password = var.admin_password
    }

    os_profile_linux_config {
      disable_password_authentication = false
    }
  }