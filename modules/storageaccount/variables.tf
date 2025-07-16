variable "environment" {
  description = "The environment for which resources are being created (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
  
}

variable "asset_name" {
  description = "The name of the asset being created"
  type        = string
  default     = "my-asset"
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