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
  # --- Unconfirmed validation candidates, derived from azurerm_virtual_network_gateway_connection's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: virtual_network_gateway_id
  #   source:    [from virtualnetworkgateways.ValidateVirtualNetworkGatewayID] !ok
  # path: virtual_network_gateway_id
  #   source:    [from virtualnetworkgateways.ValidateVirtualNetworkGatewayID] err != nil
  # path: authorization_key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: express_route_circuit_id
  #   source:    [from expressroutecircuits.ValidateExpressRouteCircuitID] !ok
  # path: express_route_circuit_id
  #   source:    [from expressroutecircuits.ValidateExpressRouteCircuitID] err != nil
  # path: egress_nat_rule_ids[*]
  #   source:    [from virtualnetworkgateways.ValidateVirtualNetworkGatewayNatRuleID] !ok
  # path: egress_nat_rule_ids[*]
  #   source:    [from virtualnetworkgateways.ValidateVirtualNetworkGatewayNatRuleID] err != nil
  # path: ingress_nat_rule_ids[*]
  #   source:    [from virtualnetworkgateways.ValidateVirtualNetworkGatewayNatRuleID] !ok
  # path: ingress_nat_rule_ids[*]
  #   source:    [from virtualnetworkgateways.ValidateVirtualNetworkGatewayNatRuleID] err != nil
  # path: peer_virtual_network_gateway_id
  #   source:    [from virtualnetworkgateways.ValidateVirtualNetworkGatewayID] !ok
  # path: peer_virtual_network_gateway_id
  #   source:    [from virtualnetworkgateways.ValidateVirtualNetworkGatewayID] err != nil
  # path: local_network_gateway_id
  #   source:    [from localnetworkgateways.ValidateLocalNetworkGatewayID] !ok
  # path: local_network_gateway_id
  #   source:    [from localnetworkgateways.ValidateLocalNetworkGatewayID] err != nil
  # path: routing_weight
  #   condition: value >= 0 && value <= 32000
  #   message:   must be between 0 and 32000
  # path: connection_protocol
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: connection_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: custom_bgp_addresses.primary
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: custom_bgp_addresses.secondary
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: ipsec_policy.dh_group
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: ipsec_policy.ike_encryption
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: ipsec_policy.ike_integrity
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: ipsec_policy.ipsec_encryption
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: ipsec_policy.ipsec_integrity
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: ipsec_policy.pfs_group
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: ipsec_policy.sa_datasize
  #   source:    validation.IntBetween(0, math.MaxInt32) - bound(s) not a literal int (e.g. a named constant like math.MaxInt32) - resolve manually
  # path: ipsec_policy.sa_lifetime
  #   condition: value >= 300
  #   message:   must be at least 300
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

