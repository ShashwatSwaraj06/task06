variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region for resources"
}

variable "asp_name" {
  type        = string
  description = "Name of the App Service Plan"
}

variable "app_name" {
  type        = string
  description = "Name of the Web Application"
}

variable "dotnet_version" {
  type        = string
  description = "Dotnet version for the web app"
}

variable "sql_connection_string" {
  type        = string
  description = "SQL database connection string"
  sensitive   = true
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to resources"
}