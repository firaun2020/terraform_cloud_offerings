terraform {
  cloud {
    workspaces {
      
    }
  }  
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.90.0"
    }
  }
}

provider "azurerm" {
    features {
      
    }
}


resource "azurerm_resource_group" "rg-1" {
    name = "CloudTest"
    location = "West Europe"
  
}