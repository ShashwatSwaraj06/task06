output "sql_connection_string" {
  description = "ADO.NET connection string for SQL Database"
  value       = "Server=tcp:${azurerm_mssql_server.sql_server.fully_qualified_domain_name},1433;Database=${azurerm_mssql_database.sql_db.name};User ID=${azurerm_mssql_server.sql_server.administrator_login};Password=${azurerm_mssql_server.sql_server.administrator_login_password};Encrypt=true;TrustServerCertificate=false;Connection Timeout=30;"
  sensitive   = true
}