output "virtual_network_gateway_connections_id" {
  description = "Map of id values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "virtual_network_gateway_connections_authorization_key" {
  description = "Map of authorization_key values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.authorization_key if v.authorization_key != null && length(v.authorization_key) > 0 }
  sensitive   = true
}
output "virtual_network_gateway_connections_bgp_enabled" {
  description = "Map of bgp_enabled values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.bgp_enabled if v.bgp_enabled != null }
}
output "virtual_network_gateway_connections_connection_mode" {
  description = "Map of connection_mode values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.connection_mode if v.connection_mode != null && length(v.connection_mode) > 0 }
}
output "virtual_network_gateway_connections_connection_protocol" {
  description = "Map of connection_protocol values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.connection_protocol if v.connection_protocol != null && length(v.connection_protocol) > 0 }
}
output "virtual_network_gateway_connections_custom_bgp_addresses" {
  description = "Map of custom_bgp_addresses values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.custom_bgp_addresses if v.custom_bgp_addresses != null && length(v.custom_bgp_addresses) > 0 }
}
output "virtual_network_gateway_connections_dpd_timeout_seconds" {
  description = "Map of dpd_timeout_seconds values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.dpd_timeout_seconds if v.dpd_timeout_seconds != null }
}
output "virtual_network_gateway_connections_egress_nat_rule_ids" {
  description = "Map of egress_nat_rule_ids values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.egress_nat_rule_ids if v.egress_nat_rule_ids != null && length(v.egress_nat_rule_ids) > 0 }
}
output "virtual_network_gateway_connections_enable_bgp" {
  description = "Map of enable_bgp values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.enable_bgp if v.enable_bgp != null }
}
output "virtual_network_gateway_connections_express_route_circuit_id" {
  description = "Map of express_route_circuit_id values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.express_route_circuit_id if v.express_route_circuit_id != null && length(v.express_route_circuit_id) > 0 }
}
output "virtual_network_gateway_connections_express_route_gateway_bypass" {
  description = "Map of express_route_gateway_bypass values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.express_route_gateway_bypass if v.express_route_gateway_bypass != null }
}
output "virtual_network_gateway_connections_ingress_nat_rule_ids" {
  description = "Map of ingress_nat_rule_ids values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.ingress_nat_rule_ids if v.ingress_nat_rule_ids != null && length(v.ingress_nat_rule_ids) > 0 }
}
output "virtual_network_gateway_connections_ipsec_policy" {
  description = "Map of ipsec_policy values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.ipsec_policy if v.ipsec_policy != null && length(v.ipsec_policy) > 0 }
}
output "virtual_network_gateway_connections_local_azure_ip_address_enabled" {
  description = "Map of local_azure_ip_address_enabled values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.local_azure_ip_address_enabled if v.local_azure_ip_address_enabled != null }
}
output "virtual_network_gateway_connections_local_network_gateway_id" {
  description = "Map of local_network_gateway_id values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.local_network_gateway_id if v.local_network_gateway_id != null && length(v.local_network_gateway_id) > 0 }
}
output "virtual_network_gateway_connections_location" {
  description = "Map of location values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.location if v.location != null && length(v.location) > 0 }
}
output "virtual_network_gateway_connections_name" {
  description = "Map of name values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.name if v.name != null && length(v.name) > 0 }
}
output "virtual_network_gateway_connections_peer_virtual_network_gateway_id" {
  description = "Map of peer_virtual_network_gateway_id values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.peer_virtual_network_gateway_id if v.peer_virtual_network_gateway_id != null && length(v.peer_virtual_network_gateway_id) > 0 }
}
output "virtual_network_gateway_connections_private_link_fast_path_enabled" {
  description = "Map of private_link_fast_path_enabled values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.private_link_fast_path_enabled if v.private_link_fast_path_enabled != null }
}
output "virtual_network_gateway_connections_resource_group_name" {
  description = "Map of resource_group_name values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "virtual_network_gateway_connections_routing_weight" {
  description = "Map of routing_weight values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.routing_weight if v.routing_weight != null }
}
output "virtual_network_gateway_connections_shared_key" {
  description = "Map of shared_key values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.shared_key if v.shared_key != null && length(v.shared_key) > 0 }
  sensitive   = true
}
output "virtual_network_gateway_connections_tags" {
  description = "Map of tags values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "virtual_network_gateway_connections_traffic_selector_policy" {
  description = "Map of traffic_selector_policy values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.traffic_selector_policy if v.traffic_selector_policy != null && length(v.traffic_selector_policy) > 0 }
}
output "virtual_network_gateway_connections_type" {
  description = "Map of type values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.type if v.type != null && length(v.type) > 0 }
}
output "virtual_network_gateway_connections_use_policy_based_traffic_selectors" {
  description = "Map of use_policy_based_traffic_selectors values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.use_policy_based_traffic_selectors if v.use_policy_based_traffic_selectors != null }
}
output "virtual_network_gateway_connections_virtual_network_gateway_id" {
  description = "Map of virtual_network_gateway_id values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.virtual_network_gateway_id if v.virtual_network_gateway_id != null && length(v.virtual_network_gateway_id) > 0 }
}

