provider "azurerm" {
  features {}

  use_oidc            = true
  client_id           = var.client_id
  subscription_id     = var.subscription_id
  tenant_id           = var.tenant_id
}

resource "azurerm_resource_group" "example" {
  name     = "rg-oidc-example12"
  location = "East US"
}
