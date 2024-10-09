#output "id" {
#  description = "The id of the resource group"
#  value       = azurerm_resource_group.resource_group.id
# }
#
#output "name" {
#  description = "The name of the resource group"
#  value       = azurerm_resource_group.resource_group.name
# }


# Output the resource group details
output "resource_group_name" {
  description = "The name of the resource group"
  value       = module.resource_group.name
}

# Output the storage account details
output "storage_account_id" {
  description = "The ID of the storage account"
  value       = azurerm_storage_account.main.id
}

output "storage_account_name" {
  description = "The name of the storage account"
  value       = azurerm_storage_account.main.name
}

# Output blob container details
output "blob_container_name" {
  description = "The name of the blob container"
  value       = azurerm_storage_container.blob.name
}

# Output table name
output "table_name" {
  description = "The name of the table"
  value       = azurerm_storage_table.table.name
}

# Output queue name
output "queue_name" {
  description = "The name of the queue"
  value       = azurerm_storage_queue.queue.name
}

