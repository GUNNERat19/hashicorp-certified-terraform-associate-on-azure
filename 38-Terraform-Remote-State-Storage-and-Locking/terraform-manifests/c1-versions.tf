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
# Terraform State Storage to Azure Storage Container
  backend "azurerm" {
    resource_group_name   = "terraform_storage_rg1"
    storage_account_name  = "tfstoragebarup"
    container_name        = "tfstatefiles"
    key                   = "terraform.tfstate"
  } 
}

# Provider Block
provider "azurerm" {
 features {}  
 subscription_id = "03bcf9e1-bfd0-4535-8262-137108f5b101"     
}

# Random String Resource
resource "random_string" "myrandom" {
  length = 6
  upper = false 
  special = false
  numeric = false   
}


