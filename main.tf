# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }

  required_version = ">= 0.14.9"
}

provider "azurerm" {
  subscription_id = var.subscriptionID
  client_id = var.clientID
  tenant_id = var.tenantID
  client_secret = var.clientSecret
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup2023"
  location = "eastus"
}