resource "azurerm_storage_account" "sa" {
  name                     = var.saname
  resource_group_name      = var.rgname
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}

output "primary_key" {
    description = "The primary access key for the storage account"
    value = azurerm_storage_account.sa.primary_access_key 
}