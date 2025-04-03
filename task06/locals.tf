locals {
  rg_name          = join("-", [var.name_prefix, "rg"])
  sql_server_name  = format("%s-%s", var.name_prefix, "sql")
  sql_db_name      = format("%s-%s", var.name_prefix, "sql-db")
  asp_name         = join("-", [var.name_prefix, "asp"])
  app_name         = join("-", [var.name_prefix, "app"])
  kv_rg_name       = format("%s-%s", var.name_prefix, "kv-rg")
  kv_name          = format("%s-%s", var.name_prefix, "kv")
  firewall_rule_name = "allow-verification-ip"
}