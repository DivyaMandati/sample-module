variable "resource_group_name" {
  description = "The name of the resource group in which to create the storage account."
  type        = string
}

variable "location" {
  description = "The Azure location where the storage account will be created."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
}

variable "account_tier" {
  description = "The performance tier of the storage account (Standard or Premium)."
  type        = string
}

variable "account_replication_type" {
  description = "The replication type of the storage account (LRS, GRS, RA-GRS, etc.)."
  type        = string
}

variable "tags" {
  description = "Tags to apply to the storage account."
  type        = map(string)
}
