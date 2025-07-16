variable "location" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "resource_group_name" {
  description = "The name of the resource group where resources will be created"
  type        = string
  default     = "chris-terraform-rg"
}

