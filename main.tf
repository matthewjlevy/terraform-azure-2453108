# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.20.0"
    }
  }

  required_version = ">= 0.14.9"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name = "Learn-tf-rg-zan"
  location = "southafricanorth"
  tags = {
    "Owner" = "Matthew Levy"
    "Application" = "Terraform"
    "Environment" = "Dev"
  }
}