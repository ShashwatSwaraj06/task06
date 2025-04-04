variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "service_plan_name" {
  type        = string
  description = "App Service Plan name"
}

variable "webapp_name" {
  type        = string
  description = "Web Application name"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "dotnet_version" {
  type        = string
  description = ".NET version"
}

variable "sql_connection_string" {
  type        = string
  description = "SQL connection string"
  sensitive   = true
}

variable "tags" {
  type        = map(string)
  description = "Resource tags"
}