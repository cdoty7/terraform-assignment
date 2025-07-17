variable "environment" {
  description = "The environment for which resources are being created (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "asset_name" {
  description = "The name of the asset being created"
  type        = string
  default     = "chris-vm"
}

variable "size" {
  description = "The size of the virtual machine"
  type        = string
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  description = "The administrator username for the virtual machine"
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "The administrator password for the virtual machine"
  type        = string
  default     = "P@ssw0rd!"
}

variable "resource_group_name" {
  description = "The name of the resource group where the virtual machine will be created"
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "West US"
}

variable "address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "virtual_network_name" {
  description = "The name of the virtual network being created"
  type        = string
  default     = "chris-vnet"
}

variable "subnet_address_prefix1" {
  description = "The address prefix for the subnet within the virtual network"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "subnet_address_prefix2" {
  description = "The address prefix for the second subnet within the virtual network"
  type        = list(string)
  default     = ["10.0.2.0/24"]
}

variable "subnet_name1" {
  description = "The name of the subnet where the virtual machine will be deployed."
  type        = string
  default     = "chris-subnet1"
}

variable "subnet_name2" {
  description = "The name of the second subnet where the virtual machine will be deployed."
  type        = string
  default     = "chris-subnet2"
}