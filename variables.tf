variable "key_vault_encrypted_value_lookup" {
  description = <<EOT
Map of key_vault_encrypted_value_lookup, attributes below
Required:
    - algorithm
    - key_vault_key_id
Optional:
    - encrypted_data
    - plain_text_value
EOT

  type = map(object({
    algorithm        = string
    key_vault_key_id = string
    encrypted_data   = optional(string)
    plain_text_value = optional(string)
  }))
}

