locals {
  rg_name            = format("%s-rg", var.name_prefix)
  sql_server_name    = format("%s-sql", var.name_prefix)
  sql_db_name        = format("%s-sql-db", var.name_prefix)
  asp_name           = format("%s-asp", var.name_prefix)
  app_name           = format("%s-app", var.name_prefix)
  kv_rg_name         = format("%s-kv-rg", var.name_prefix)
  kv_name            = format("%s-kv", var.name_prefix)
  firewall_rule_name = "allow-verification-ip"
}