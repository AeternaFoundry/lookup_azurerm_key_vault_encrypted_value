output "key_vault_encrypted_value_lookup_id" {
  description = "Map of id values across all key_vault_encrypted_value_lookup, keyed the same as var.key_vault_encrypted_value_lookup"
  value       = { for k, v in data.azurerm_key_vault_encrypted_value.key_vault_encrypted_value_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "key_vault_encrypted_value_lookup_algorithm" {
  description = "Map of algorithm values across all key_vault_encrypted_value_lookup, keyed the same as var.key_vault_encrypted_value_lookup"
  value       = { for k, v in data.azurerm_key_vault_encrypted_value.key_vault_encrypted_value_lookup : k => v.algorithm if v.algorithm != null && length(v.algorithm) > 0 }
}
output "key_vault_encrypted_value_lookup_decoded_plain_text_value" {
  description = "Map of decoded_plain_text_value values across all key_vault_encrypted_value_lookup, keyed the same as var.key_vault_encrypted_value_lookup"
  value       = { for k, v in data.azurerm_key_vault_encrypted_value.key_vault_encrypted_value_lookup : k => v.decoded_plain_text_value if v.decoded_plain_text_value != null && length(v.decoded_plain_text_value) > 0 }
  sensitive   = true
}
output "key_vault_encrypted_value_lookup_encrypted_data" {
  description = "Map of encrypted_data values across all key_vault_encrypted_value_lookup, keyed the same as var.key_vault_encrypted_value_lookup"
  value       = { for k, v in data.azurerm_key_vault_encrypted_value.key_vault_encrypted_value_lookup : k => v.encrypted_data if v.encrypted_data != null && length(v.encrypted_data) > 0 }
  sensitive   = true
}
output "key_vault_encrypted_value_lookup_key_vault_key_id" {
  description = "Map of key_vault_key_id values across all key_vault_encrypted_value_lookup, keyed the same as var.key_vault_encrypted_value_lookup"
  value       = { for k, v in data.azurerm_key_vault_encrypted_value.key_vault_encrypted_value_lookup : k => v.key_vault_key_id if v.key_vault_key_id != null && length(v.key_vault_key_id) > 0 }
}
output "key_vault_encrypted_value_lookup_plain_text_value" {
  description = "Map of plain_text_value values across all key_vault_encrypted_value_lookup, keyed the same as var.key_vault_encrypted_value_lookup"
  value       = { for k, v in data.azurerm_key_vault_encrypted_value.key_vault_encrypted_value_lookup : k => v.plain_text_value if v.plain_text_value != null && length(v.plain_text_value) > 0 }
  sensitive   = true
}

