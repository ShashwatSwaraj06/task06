output "sql_server_fqdn" {
  description = "SQL Server FQDN"
  value       = module.sql.sql_server_fqdn
}

output "app_hostname" {
  description = "Default hostname of the web application"
  value       = module.webapp.app_hostname
}