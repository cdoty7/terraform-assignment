locals {
  sql_server_name = format("%s-%s", var.asset_name, var.environment)
}

resource "azurerm_mssql_server" "sqlserver" {
  name                         = local.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password
  
  tags = {
    environment = var.environment
    asset_name  = var.asset_name
  }
}