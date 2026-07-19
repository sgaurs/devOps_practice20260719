resource "azurerm_resource_group" "testrg" {
  for_each = var.myrg

  name       = each.value.name
  location   = each.value.location
  managed_by = each.value.managed_by
}
