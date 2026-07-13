variable "virtual_network_gateway_connections" {
  description = <<EOT
Map of virtual_network_gateway_connections, attributes below
Required:
    - location
    - name
    - resource_group_name
    - type
    - virtual_network_gateway_id
Optional:
    - authorization_key
    - authorization_key_key_vault_id (alternative to authorization_key - read from Key Vault instead)
    - authorization_key_key_vault_secret_name (alternative to authorization_key - read from Key Vault instead)
    - bgp_enabled
    - connection_mode
    - connection_protocol
    - dpd_timeout_seconds
    - egress_nat_rule_ids
    - enable_bgp
    - express_route_circuit_id
    - express_route_gateway_bypass
    - ingress_nat_rule_ids
    - local_azure_ip_address_enabled
    - local_network_gateway_id
    - peer_virtual_network_gateway_id
    - private_link_fast_path_enabled
    - routing_weight
    - shared_key
    - shared_key_key_vault_id (alternative to shared_key - read from Key Vault instead)
    - shared_key_key_vault_secret_name (alternative to shared_key - read from Key Vault instead)
    - tags
    - use_policy_based_traffic_selectors
    - custom_bgp_addresses (block):
        - primary (required)
        - secondary (optional)
    - ipsec_policy (block):
        - dh_group (required)
        - ike_encryption (required)
        - ike_integrity (required)
        - ipsec_encryption (required)
        - ipsec_integrity (required)
        - pfs_group (required)
        - sa_datasize (optional)
        - sa_lifetime (optional)
    - traffic_selector_policy (block):
        - local_address_cidrs (required)
        - remote_address_cidrs (required)
EOT

  type = map(object({
    location                                = string
    name                                    = string
    resource_group_name                     = string
    type                                    = string
    virtual_network_gateway_id              = string
    shared_key                              = optional(string)
    shared_key_key_vault_id                 = optional(string)
    shared_key_key_vault_secret_name        = optional(string)
    routing_weight                          = optional(number)
    private_link_fast_path_enabled          = optional(bool)
    peer_virtual_network_gateway_id         = optional(string)
    local_network_gateway_id                = optional(string)
    local_azure_ip_address_enabled          = optional(bool)
    ingress_nat_rule_ids                    = optional(set(string))
    express_route_gateway_bypass            = optional(bool)
    enable_bgp                              = optional(bool)
    tags                                    = optional(map(string))
    egress_nat_rule_ids                     = optional(set(string))
    dpd_timeout_seconds                     = optional(number)
    connection_protocol                     = optional(string)
    connection_mode                         = optional(string)
    bgp_enabled                             = optional(bool)
    authorization_key                       = optional(string)
    authorization_key_key_vault_id          = optional(string)
    authorization_key_key_vault_secret_name = optional(string)
    express_route_circuit_id                = optional(string)
    use_policy_based_traffic_selectors      = optional(bool)
    custom_bgp_addresses = optional(object({
      primary   = string
      secondary = optional(string)
    }))
    ipsec_policy = optional(object({
      dh_group         = string
      ike_encryption   = string
      ike_integrity    = string
      ipsec_encryption = string
      ipsec_integrity  = string
      pfs_group        = string
      sa_datasize      = optional(number)
      sa_lifetime      = optional(number)
    }))
    traffic_selector_policy = optional(list(object({
      local_address_cidrs  = list(string)
      remote_address_cidrs = list(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_gateway_connections : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_gateway_connections : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_gateway_connections : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_gateway_connections : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_gateway_connections : (
        v.authorization_key == null || (length(v.authorization_key) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_gateway_connections : (
        v.routing_weight == null || (v.routing_weight >= 0 && v.routing_weight <= 32000)
      )
    ])
    error_message = "must be between 0 and 32000"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_gateway_connections : (
        v.ipsec_policy == null || (v.ipsec_policy.sa_lifetime == null || (v.ipsec_policy.sa_lifetime >= 300))
      )
    ])
    error_message = "must be at least 300"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_gateway_connections : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 29 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

