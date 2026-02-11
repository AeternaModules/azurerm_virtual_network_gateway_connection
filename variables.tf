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
    location                           = string
    name                               = string
    resource_group_name                = string
    type                               = string
    virtual_network_gateway_id         = string
    shared_key                         = optional(string)
    routing_weight                     = optional(number)
    private_link_fast_path_enabled     = optional(bool) # Default: false
    peer_virtual_network_gateway_id    = optional(string)
    local_network_gateway_id           = optional(string)
    local_azure_ip_address_enabled     = optional(bool)
    ingress_nat_rule_ids               = optional(set(string))
    enable_bgp                         = optional(bool)
    express_route_circuit_id           = optional(string)
    tags                               = optional(map(string))
    egress_nat_rule_ids                = optional(set(string))
    dpd_timeout_seconds                = optional(number)
    connection_protocol                = optional(string)
    connection_mode                    = optional(string) # Default: "Default"
    authorization_key                  = optional(string)
    express_route_gateway_bypass       = optional(bool)
    use_policy_based_traffic_selectors = optional(bool)
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
    traffic_selector_policy = optional(object({
      local_address_cidrs  = list(string)
      remote_address_cidrs = list(string)
    }))
  }))
}

