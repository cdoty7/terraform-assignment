locals {
  resource_group_name = format("%s-%s", var.asset_name, var.environment)
}

resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = var.location

  tags = {
    environment = var.environment
    asset_name  = var.asset_name
  }
}