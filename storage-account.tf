resource "azurerm_resource_group" "first_resource_group" {
  name     = ""
  location = var.location

  tags = ""
}


resource "azurerm_storage_account" "example" {
  name                     = ""
  resource_group_name      = ""
  location                 = var.location
  account_tier             = ""
  account_replication_type = ""

  tags = ""

}

resource "azurerm_storage_container" "first_container" {
  name                 = ""
  storage_account_name = ""
  #container_access_type = "private" -> opcional
}