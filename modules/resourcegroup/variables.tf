variable "asset_name" {
  description = "The name of the asset being created"
  type        = string
  default     = "my-asset"
}

variable "environment" {
  description = "The environment for which resources are being created (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}