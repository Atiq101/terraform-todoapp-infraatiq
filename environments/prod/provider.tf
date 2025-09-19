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
    key                  = "prod.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "aa50dcb0-04de-41e4-bb3e-260e54d18bec"
}
