locals {
  vnet_name = format("%s-%s", var.asset_name, var.environment)
}

resource "azurerm_virtual_network" "vnet" {
  name                = local.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = {
    environment = var.environment
    asset_name  = var.asset_name
  }
}