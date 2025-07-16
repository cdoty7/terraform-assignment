variable "location" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "us-east-1"
}

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