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