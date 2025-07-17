locals {
  vm_name = format("%s-%s", var.asset_name, var.environment)
  vnet_name = format("%s-vnet", var.asset_name)
}

resource "azurerm_virtual_network" "vnet" {
  name                = local.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = {
    environment = var.environment
  }
}

resource "azurerm_subnet" "subnet1" {
  name                = var.subnet_name1
  resource_group_name = var.resource_group_name
  virtual_network_name = local.vnet_name
  address_prefixes    = var.subnet_address_prefix1
  depends_on = [ azurerm_virtual_network.vnet ]
}

resource "azurerm_subnet" "subnet2" {
  name                = var.subnet_name2
  resource_group_name = var.resource_group_name
  virtual_network_name = local.vnet_name
  address_prefixes    = var.subnet_address_prefix2
  depends_on = [ azurerm_virtual_network.vnet ]
}

resource "azurerm_network_interface" "nic" {
  name                = "${local.vm_name}-nic"
  location            = var.location
  resource_group_name = var.resource_group_name
  depends_on = [ azurerm_subnet.subnet2 ]

  ip_configuration {
    name                          = "internal"
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = azurerm_subnet.subnet2.id
  }


  tags = {
    environment = var.environment
  }
}

  resource "azurerm_virtual_machine" "vm" {
    name                  = local.vm_name
    location              = var.location
    resource_group_name   = var.resource_group_name
    network_interface_ids = [azurerm_network_interface.nic.id]
    vm_size               = var.size
    depends_on            = [azurerm_network_interface.nic]
    storage_image_reference {
      publisher = "Canonical"
      offer     = "UbuntuServer"
      sku       = "18.04-LTS"
      version   = "latest"
    }
    storage_os_disk {
      name              = "${local.vm_name}-osdisk"
      caching           = "ReadWrite"
      create_option     = "FromImage"
      managed_disk_type = "Standard_LRS"
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