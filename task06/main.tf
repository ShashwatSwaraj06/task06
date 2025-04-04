data "azurerm_key_vault" "existing" {
  name                = local.kv_name
  resource_group_name = local.kv_rg_name
}

resource "azurerm_resource_group" "rg" {
  name     = local.rg_name
  location = var.location
  tags     = var.tags
}

module "sql" {
  source = "./modules/sql"

  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  sql_server_name     = local.sql_server_name
  sql_db_name         = local.sql_db_name
  sql_admin_username  = var.sql_admin_username
  firewall_rule_name  = local.firewall_rule_name
  allowed_ip_address  = var.allowed_ip_address
  key_vault_id        = data.azurerm_key_vault.existing.id
  tags                = var.tags
}

module "webapp" {
  source = "./modules/webapp"

  # Only pass variables defined in webapp module's variables.tf
  resource_group_name   = azurerm_resource_group.rg.name
  service_plan_name     = local.asp_name # Changed from asp_name
  webapp_name           = local.app_name # Changed from app_name
  location              = var.location
  dotnet_version        = "8.0"
  sql_connection_string = module.sql.sql_connection_string
  tags                  = var.tags
}