output "resource_group_name" {
  #value = [azurerm_resource_group.resource_group.*.id]
  value = [ for v in azurerm_resource_group.resource_group : v.id ]
}
