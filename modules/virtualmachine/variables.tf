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
  default     = "East US"
}