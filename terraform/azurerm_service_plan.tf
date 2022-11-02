resource "azurerm_service_plan" "main" {
  name                = "webhookclient-${lower(random_id.storage.hex)}"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  sku_name = "Y1"
  os_type  = "Linux"
}