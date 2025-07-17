resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = "West US"
}

module "virtualmachine" {
  source              = "./modules/virtualmachine"
  resource_group_name = azurerm_resource_group.this.name
  depends_on          = [azurerm_resource_group.this]
}

module "storageaccount" {
  source              = "./modules/storageaccount"
  resource_group_name = azurerm_resource_group.this.name
}

module "azuresql" {
  source              = "./modules/azuresql"
  resource_group_name = azurerm_resource_group.this.name 
}