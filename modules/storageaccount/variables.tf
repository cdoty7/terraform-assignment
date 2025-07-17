variable "environment" {
  description = "The environment for which resources are being created (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
  
}

variable "storage_account_name" {
  description = "The name of the storage account being created"
  type        = string
  default     = "chrisstorageaccount"
}

variable "account_tier" {
  description = "The storage account tier (e.g., Standard, Premium)"
  type        = string
  default     = "Standard"
}

variable "account_kind" {
  description = "The storage account kind (e.g., StorageV2, BlobStorage)"
  type        = string
  default     = "StorageV2"
}

variable "account_replication_type" {
  description = "The storage account replication type (e.g., LRS, GRS)"
  type        = string
  default     = "LRS"
}

variable "resource_group_name" {
  description = "The name of the resource group where the storage account will be created"
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "East US"
}

variable "storage_containers" {
  description = "A list of storage container names to be created."
  type        = list(string)
  default     = ["container1"]
}