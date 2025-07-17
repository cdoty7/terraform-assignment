
resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = {
    environment = var.environment
  }
}

resource "azurerm_subnet" "subnet" {
  for_each            = toset(var.subnet_id)
  name                = each.value
  resource_group_name = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes    = [var.subnet_address_prefix]
}
