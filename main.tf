resource "azurerm_resource_group" "rg" {
  name     = var.rgname
  location = var.location
}

locals {
  rgname   = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
}

resource "azurerm_container_registry" "acr" {
  name                = var.acrname
  resource_group_name = local.rgname
  location            = local.location
  sku                 = var.sku
  admin_enabled       = var.admin_enabled

}
