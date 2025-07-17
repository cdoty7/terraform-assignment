resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = "East US"
}

module "virtualnetwork" {
  source              = "./modules/virtualnetwork"
  resource_group_name = azurerm_resource_group.this.name
}

module "virtualmachine" {
  source              = "./modules/virtualmachine"
  resource_group_name = azurerm_resource_group.this.name
}

module "storageaccount" {
  source              = "./modules/storageaccount"
  resource_group_name = azurerm_resource_group.this.name
}