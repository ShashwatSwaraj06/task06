variable "name_prefix" {
  type    = string
  default = "cmaz-57d8b090-mod6"
}

variable "location" {
  type    = string
  default = "East US"
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
  type = map(string)
  default = {
    Creator = "shashwat_swaraj@epam.com"
  }
}