terraform {
  backend "azurerm" {
    resource_group_name = "w-iaas-rg"
    storage_account_name = ""
    container_name = "tfstate"
    key = "w-iaas-handson/terraform.state"
  }
}

// プロバイダーを指定
provider "azurerm" {
  features {}
}

// リソースグループの作成
// https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group
resource "azurerm_resource_group" "w-iaas-rg" {
  name = "w-iaas-rg"
  // 西日本を指定
  location = "Japan West"
}


