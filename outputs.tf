output "virtual_network_gateway_connections_authorization_key" {
  description = "Map of authorization_key values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.authorization_key }
  sensitive   = true
}
output "virtual_network_gateway_connections_bgp_enabled" {
  description = "Map of bgp_enabled values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.bgp_enabled }
}
output "virtual_network_gateway_connections_connection_mode" {
  description = "Map of connection_mode values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.connection_mode }
}
output "virtual_network_gateway_connections_connection_protocol" {
  description = "Map of connection_protocol values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.connection_protocol }
}
output "virtual_network_gateway_connections_custom_bgp_addresses" {
  description = "Map of custom_bgp_addresses values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.custom_bgp_addresses }
}
output "virtual_network_gateway_connections_dpd_timeout_seconds" {
  description = "Map of dpd_timeout_seconds values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.dpd_timeout_seconds }
}
output "virtual_network_gateway_connections_egress_nat_rule_ids" {
  description = "Map of egress_nat_rule_ids values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.egress_nat_rule_ids }
}
output "virtual_network_gateway_connections_enable_bgp" {
  description = "Map of enable_bgp values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.enable_bgp }
}
output "virtual_network_gateway_connections_express_route_circuit_id" {
  description = "Map of express_route_circuit_id values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.express_route_circuit_id }
}
output "virtual_network_gateway_connections_express_route_gateway_bypass" {
  description = "Map of express_route_gateway_bypass values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.express_route_gateway_bypass }
}
output "virtual_network_gateway_connections_ingress_nat_rule_ids" {
  description = "Map of ingress_nat_rule_ids values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.ingress_nat_rule_ids }
}
output "virtual_network_gateway_connections_ipsec_policy" {
  description = "Map of ipsec_policy values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.ipsec_policy }
}
output "virtual_network_gateway_connections_local_azure_ip_address_enabled" {
  description = "Map of local_azure_ip_address_enabled values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.local_azure_ip_address_enabled }
}
output "virtual_network_gateway_connections_local_network_gateway_id" {
  description = "Map of local_network_gateway_id values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.local_network_gateway_id }
}
output "virtual_network_gateway_connections_location" {
  description = "Map of location values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.location }
}
output "virtual_network_gateway_connections_name" {
  description = "Map of name values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.name }
}
output "virtual_network_gateway_connections_peer_virtual_network_gateway_id" {
  description = "Map of peer_virtual_network_gateway_id values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.peer_virtual_network_gateway_id }
}
output "virtual_network_gateway_connections_private_link_fast_path_enabled" {
  description = "Map of private_link_fast_path_enabled values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.private_link_fast_path_enabled }
}
output "virtual_network_gateway_connections_resource_group_name" {
  description = "Map of resource_group_name values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.resource_group_name }
}
output "virtual_network_gateway_connections_routing_weight" {
  description = "Map of routing_weight values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.routing_weight }
}
output "virtual_network_gateway_connections_shared_key" {
  description = "Map of shared_key values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.shared_key }
  sensitive   = true
}
output "virtual_network_gateway_connections_tags" {
  description = "Map of tags values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.tags }
}
output "virtual_network_gateway_connections_traffic_selector_policy" {
  description = "Map of traffic_selector_policy values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.traffic_selector_policy }
}
output "virtual_network_gateway_connections_type" {
  description = "Map of type values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.type }
}
output "virtual_network_gateway_connections_use_policy_based_traffic_selectors" {
  description = "Map of use_policy_based_traffic_selectors values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.use_policy_based_traffic_selectors }
}
output "virtual_network_gateway_connections_virtual_network_gateway_id" {
  description = "Map of virtual_network_gateway_id values across all virtual_network_gateway_connections, keyed the same as var.virtual_network_gateway_connections"
  value       = { for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : k => v.virtual_network_gateway_id }
}

