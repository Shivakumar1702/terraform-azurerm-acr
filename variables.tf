variable "rgname" {
  type        = string
  default     = "resource-group-001"
  description = "name of the resource group"
}

variable "location" {
  type        = string
  default     = "eastus"
  description = "location where the resource group resides"
}

variable "acrname" {
  type        = string
  description = "name of the container registry. globally unique"
}

variable "sku" {
  type        = string
  default     = "Basic"
  description = "The SKU name of the container registry. Possible values are Basic, Standard and Premium"
}

variable "admin_enabled" {
  type        = bool
  default     = false
  description = "is an admin user needed for the registry"
}

