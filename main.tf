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
    features {
      
    }
}


resource "azurerm_resource_group" "rg-1" {
    name = "CloudTest"
    location = "West Europe"
  
}

variable "ARM_SECRET" {
 
}
variable "ARM_SUBSCRIPTION_ID" {
  
}
variable "ARM_CLIENT_ID" {
  
}