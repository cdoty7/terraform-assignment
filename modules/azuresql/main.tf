locals {
  sql_server_name = format("%s-%s", var.asset_name, var.environment)
}

resource "azurerm_sql_server" "azuresql" {
  name                         = local.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password

  tags = {
    environment = var.environment
    asset_name  = var.asset_name
  }
}
