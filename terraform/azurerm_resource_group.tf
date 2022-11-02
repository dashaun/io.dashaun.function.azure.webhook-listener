resource "azurerm_resource_group" "main" {
  name     = var.AZ_RESOURCE_GROUP
  location = var.AZ_LOCATION
}