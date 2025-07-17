
resource "azurerm_storage_account" "storage" {
  name                     = format("%s%s", var.asset_name, var.environment)
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_kind             = var.account_kind
  account_replication_type = var.account_replication_type
  tags = {
    environment = var.environment
  }
}

resource "azurerm_storage_container" "this" {
  for_each = toset(var.storage_containers)
  storage_account_id = azurerm_storage_account.storage.id
  name                  = each.value
  container_access_type = "private"
  depends_on = [ azurerm_storage_account.storage ]
}