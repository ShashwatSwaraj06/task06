variable "resource_group_name" {
  type        = string
  description = "Name of the resource group where resources will be deployed"
}

variable "service_plan_name" {
  type        = string
  description = "Name of the App Service Plan"
}

variable "webapp_name" {
  type        = string
  description = "Name of the Linux Web Application"
}

variable "location" {
  type        = string
  description = "Azure region where resources will be deployed"
}

variable "dotnet_version" {
  type        = string
  description = ".NET version for the web application stack"
  default     = "8.0"
}

variable "sql_connection_string" {
  type        = string
  description = "Sensitive SQL database connection string"
  sensitive   = true
}

variable "tags" {
  type        = map(string)
  description = "Resource tags to apply to all components"
  default = {
    Creator = "shashwat_swaraj@epam.com"
  }
}