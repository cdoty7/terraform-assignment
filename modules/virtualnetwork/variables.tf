variable "address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "environment" {
  description = "The environment for which resources are being created (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
  
}

variable "virtual_network_name" {
  description = "The name of the virtual network being created"
  type        = string
  default     = "chris-vnet"
}

variable "resource_group_name" {
  description = "The name of the resource group where the virtual network will be created"
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "East US"
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet within the virtual network"
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_id" {
  description = "The ID of the subnet where the virtual machine will be deployed."
  type        = list(string)
  default     = ["chris-subnet1", "chris-subnet2"]
}