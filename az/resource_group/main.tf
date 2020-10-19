resource "azurerm_resource_group" "resource_group" {
  for_each = toset(var.resource_group_name)
  name     = each.value
  location = "West Europe"
}


resource "azurerm_shared_image_gallery" "example" {
  name                = "example_image_gallery"
  resource_group_name = "testrg"
  location            = "West Europe"
  description         = "Shared images and things."

  tags = {
    Hello = "There"
    World = "Example"
  }
}
