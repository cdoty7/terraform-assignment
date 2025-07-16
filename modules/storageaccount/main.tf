locals {
  storage_account_name = format("%s-%s", var.asset_name, var.environment)
}

resource "azurerm_storage_account" "storage" {
  name                     = local.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_kind             = var.account_kind
  account_replication_type = var.account_replication_type

  tags = {
    environment = var.environment
    asset_name  = var.asset_name
  }
}