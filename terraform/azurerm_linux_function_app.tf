resource "azurerm_linux_function_app" "main" {
  name                        = var.AZ_FUNCTION_NAME_APP
  location                    = azurerm_resource_group.main.location
  resource_group_name         = azurerm_resource_group.main.name
  service_plan_id             = azurerm_service_plan.main.id
  storage_account_name        = azurerm_storage_account.main.name
  storage_account_access_key  = azurerm_storage_account.main.primary_access_key
  https_only                  = true
  functions_extension_version = "~4"
  auth_settings {
    enabled = false
  }
  site_config {
    always_on = false
  }
}