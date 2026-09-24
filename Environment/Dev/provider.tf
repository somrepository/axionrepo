terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.6.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "yuvirg"
    storage_account_name = "yuvistg"
    container_name       = "yuvicntr"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "c071dc48-fd56-4a9f-a560-7c1c6be9878e"

}
