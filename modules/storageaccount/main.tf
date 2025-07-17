
resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
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
}