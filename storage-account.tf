resource "azurerm_resource_group" "first_resource_group" {
  name     = "storage_account_resource_group"
  location = var.location

  tags = ""
}


resource "azurerm_storage_account" "example" {
  name                     = "matheusbudinstorageaccount"
  resource_group_name      = azurerm_resource_group.first_resource_group.name #referenciando o nome acima, nesta linha.
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = ""

}

resource "azurerm_storage_container" "first_container" {
  name                 = ""
  storage_account_name = azurerm_storage_account.example.name #novamente referenciando o nome acima nesta linha
  #container_access_type = "private" -> opcional
}