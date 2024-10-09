# module "resource_group" {
#  source       = "../"
#  environment  = var.environment
#  main_project = var.main_project
#  sub_project  = var.sub_project
#  location     = var.location
#  tags         = var.tags
#
# }


module "resource_group" {
  source       = "../"
  environment  = var.environment
  main_project = var.main_project
  sub_project  = var.sub_project
  location     = var.location
  tags         = var.tags
}

# Storage Account
resource "azurerm_storage_account" "main" {
  name                     = local.storage_account_name
  resource_group_name       = module.resource_group.name
  location                  = var.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"

  tags = var.tags
}

# Blob Container
resource "azurerm_storage_container" "blob" {
  name                  = "blobcontainer"
  storage_account_name  = azurerm_storage_account.main.name
  container_access_type = "private"
}

# Table Storage
resource "azurerm_storage_table" "table" {
  name                 = "mytable"
  storage_account_name = azurerm_storage_account.main.name
}

# Queue Storage
resource "azurerm_storage_queue" "queue" {
  name                 = "myqueue"
  storage_account_name = azurerm_storage_account.main.name
}
