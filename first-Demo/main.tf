terraform {
  required_providers {
    azurerm = {
      source  = "azurerm"
      version = "~> 2.65"
    }
  }

  required_version = ">= 0.14"

  backend "remote" {
    organization = "Volvo-DevSecOps-POC"

    workspaces {
      name = "Azure-IAC-POC-DEV"
    }
  }
}


provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "demo" {
  name     = "devsecops-first-demo"
  location = var.location
}

