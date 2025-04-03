variable "name_prefix" {
  type        = string
  default     = "cmaz-57d8b090-mod6"
  description = "Prefix for all resource names"
}

variable "location" {
  type        = string
  description = "Azure region for resources"
  default     = "East US 2" # Changed from East US
}
variable "allowed_ip_address" {
  type        = string
  description = "IP address to allow SQL Server firewall access"
}

variable "sql_admin_username" {
  type        = string
  description = "SQL administrator username"
  default     = "sqladmin"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all resources"
  default = {
    Creator = "shashwat_swaraj@epam.com"
  }
}