locals {
  rg_name            = var.name_prefix
  sql_server_name    = "${var.name_prefix}-sql"
  sql_db_name        = "${var.name_prefix}-sql-db"
  asp_name           = "${var.name_prefix}-asp"
  app_name           = "${var.name_prefix}-app"
  kv_rg_name         = "${var.name_prefix}-kv-rg"
  kv_name            = "${var.name_prefix}-kv"
  firewall_rule_name = "allow-verification-ip"
}