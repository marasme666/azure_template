terraform {
  required_version = ">= 0.14.5"

    required_providers {

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.44.0"
    }

  }

  backend "azurerm" {
    resource_group_name  = "__tf_project_remote_backend_resource_group__"
    storage_account_name = "__tf_project_remote_backend_storage_account_name__"
    container_name       = "__tf_project_remote_backend_container_name__"    
    key                  = "__tf_project_remote_backend_container_key__"
  }  

}
