data "azurerm_key_vault_encrypted_value" "key_vault_encrypted_value_lookup" {
  for_each = var.key_vault_encrypted_value_lookup

  algorithm        = each.value.algorithm
  key_vault_key_id = each.value.key_vault_key_id
  encrypted_data   = each.value.encrypted_data
  plain_text_value = each.value.plain_text_value
}

