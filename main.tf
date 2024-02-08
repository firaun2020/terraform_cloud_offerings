terraform {
  cloud {
    organization = "firaun2020"
    token = var.ARM_SECRET
    workspaces {
      name = "terraform_cloud_offerings"
      
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
    subscription_id = var.ARM_SUBSCRIPTION_ID
    client_id = var.ARM_CLIENT_ID
    client_secret = var.ARM_SECRET
    tenant_id = var.ARM_TENANT_ID
    skip_provider_registration = true
    features {
      
    }
}


resource "azurerm_resource_group" "rg-1" {
    count = 5
    name = "rg-${count.index}"
    location = "West Europe"
    
  
}

resource "azurerm_resource_group" "2nd-tier" {
    count = length(azurerm_resource_group.rg-1.id)
    name = "${azurerm_resource_group.rg-1}-${count.index}"
    location = azurerm_resource_group.rg-1.location[count.index]
  
}

