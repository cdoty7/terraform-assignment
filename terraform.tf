terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.36.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "606e824b-aaf7-4b4e-9057-b459f6a4436d"
  features {}
}