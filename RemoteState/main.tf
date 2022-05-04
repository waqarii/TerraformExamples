#---- Providers ---
terraform {

  required_version = ">=1.1.7"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.99"
    }
  }
  backend "azurerm" {
  }
}

provider "azurerm" {

    features {
    }
}

resource "azurerm_resource_group" "main" {
  name     = "temptodelete"
  location = "westeurope"
}