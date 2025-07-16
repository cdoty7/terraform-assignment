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

variable "asset_name" {
  description = "The name of the asset being created"
  type        = string
  default     = "my-asset"
}