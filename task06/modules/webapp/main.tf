resource "azurerm_service_plan" "asp" {
  name                = var.service_plan_name # Changed from var.asp_name
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "P0v3" # Ensure correct SKU
  tags                = var.tags
}

resource "azurerm_linux_web_app" "webapp" {
  name                = var.webapp_name # Changed from var.app_name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.asp.id

  site_config {
    application_stack {
      dotnet_version = var.dotnet_version
    }
  }

  app_settings = {
    "ConnectionStrings__DefaultConnection" = var.sql_connection_string
  }

  tags = var.tags
}