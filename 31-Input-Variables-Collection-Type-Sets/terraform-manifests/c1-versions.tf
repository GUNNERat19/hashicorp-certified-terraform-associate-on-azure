# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" 
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
  }
}

# Provider Block
provider "azurerm" {
 features {}      
 subscription_id = "03bcf9e1-bfd0-4535-8262-137108f5b101"  
}

# Random String Resource
resource "random_string" "myrandom" {
  for_each = var.environment
  length = 6
  upper = false 
  special = false
  numeric = false   
}


