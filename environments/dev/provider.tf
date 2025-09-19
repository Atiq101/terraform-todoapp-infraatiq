terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "RG-ATIQ"
    storage_account_name = "atiqstroage321"
    container_name       = "atiqcontainer321"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "aa50dcb0-04de-41e4-bb3e-260e54d18bec"
  client_id = "966902af-9d41-4417-bf64-f2bd84aac8ca"
  tenant_id = " 3f89de9e-413d-40f2-811c-4f1ab9c97340"
}
