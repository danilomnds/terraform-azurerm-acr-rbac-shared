resource "azurerm_role_assignment" "reader_acr_rg" {  
  for_each                               = var.role_assignment
  name                                   = lookup(each.value, "name", null)
  scope                                  = "/${local.rg}"
  role_definition_name                   = "Reader"
  principal_id                           = lookup(each.value, "principal_id", null)
  condition                              = lookup(each.value, "condition", null)
  condition_version                      = lookup(each.value, "condition_version", null)
  delegated_managed_identity_resource_id = lookup(each.value, "delegated_managed_identity_resource_id", null)
  description                            = lookup(each.value, "description", null)
  skip_service_principal_aad_check       = lookup(each.value, "skip_service_principal_aad_check", null)
}