variable "asset_name" {
  description = "The name of the asset, used to prefix resource names."
  type        = string
  default    = "chris-azuresql"
}

variable "environment" {
  description = "The environment for the resources, e.g., dev, test, prod."
  type        = string
  default     = "dev"
}

variable "admin_username" {
  description = "The administrator login for the Azure SQL server."
  type        = string
  default     = "sqladmin"
}

variable "admin_password" {
  description = "The password for the administrator login."
  type        = string
  default     = "P@ssw0rd!"
}

variable "resource_group_name" {
  description = "The name of the resource group where the Azure SQL server will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the Azure SQL server will be created."
  type        = string
  default     = "West US"
}