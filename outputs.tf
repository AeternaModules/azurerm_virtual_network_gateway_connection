output "virtual_network_gateway_connections" {
  description = "All virtual_network_gateway_connection resources"
  value       = azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections
  sensitive   = true
}
output "virtual_network_gateway_connections_authorization_key" {
  description = "List of authorization_key values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.authorization_key]
  sensitive   = true
}
output "virtual_network_gateway_connections_bgp_enabled" {
  description = "List of bgp_enabled values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.bgp_enabled]
}
output "virtual_network_gateway_connections_connection_mode" {
  description = "List of connection_mode values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.connection_mode]
}
output "virtual_network_gateway_connections_connection_protocol" {
  description = "List of connection_protocol values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.connection_protocol]
}
output "virtual_network_gateway_connections_custom_bgp_addresses" {
  description = "List of custom_bgp_addresses values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.custom_bgp_addresses]
}
output "virtual_network_gateway_connections_dpd_timeout_seconds" {
  description = "List of dpd_timeout_seconds values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.dpd_timeout_seconds]
}
output "virtual_network_gateway_connections_egress_nat_rule_ids" {
  description = "List of egress_nat_rule_ids values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.egress_nat_rule_ids]
}
output "virtual_network_gateway_connections_enable_bgp" {
  description = "List of enable_bgp values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.enable_bgp]
}
output "virtual_network_gateway_connections_express_route_circuit_id" {
  description = "List of express_route_circuit_id values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.express_route_circuit_id]
}
output "virtual_network_gateway_connections_express_route_gateway_bypass" {
  description = "List of express_route_gateway_bypass values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.express_route_gateway_bypass]
}
output "virtual_network_gateway_connections_ingress_nat_rule_ids" {
  description = "List of ingress_nat_rule_ids values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.ingress_nat_rule_ids]
}
output "virtual_network_gateway_connections_ipsec_policy" {
  description = "List of ipsec_policy values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.ipsec_policy]
}
output "virtual_network_gateway_connections_local_azure_ip_address_enabled" {
  description = "List of local_azure_ip_address_enabled values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.local_azure_ip_address_enabled]
}
output "virtual_network_gateway_connections_local_network_gateway_id" {
  description = "List of local_network_gateway_id values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.local_network_gateway_id]
}
output "virtual_network_gateway_connections_location" {
  description = "List of location values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.location]
}
output "virtual_network_gateway_connections_name" {
  description = "List of name values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.name]
}
output "virtual_network_gateway_connections_peer_virtual_network_gateway_id" {
  description = "List of peer_virtual_network_gateway_id values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.peer_virtual_network_gateway_id]
}
output "virtual_network_gateway_connections_private_link_fast_path_enabled" {
  description = "List of private_link_fast_path_enabled values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.private_link_fast_path_enabled]
}
output "virtual_network_gateway_connections_resource_group_name" {
  description = "List of resource_group_name values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.resource_group_name]
}
output "virtual_network_gateway_connections_routing_weight" {
  description = "List of routing_weight values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.routing_weight]
}
output "virtual_network_gateway_connections_shared_key" {
  description = "List of shared_key values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.shared_key]
  sensitive   = true
}
output "virtual_network_gateway_connections_tags" {
  description = "List of tags values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.tags]
}
output "virtual_network_gateway_connections_traffic_selector_policy" {
  description = "List of traffic_selector_policy values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.traffic_selector_policy]
}
output "virtual_network_gateway_connections_type" {
  description = "List of type values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.type]
}
output "virtual_network_gateway_connections_use_policy_based_traffic_selectors" {
  description = "List of use_policy_based_traffic_selectors values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.use_policy_based_traffic_selectors]
}
output "virtual_network_gateway_connections_virtual_network_gateway_id" {
  description = "List of virtual_network_gateway_id values across all virtual_network_gateway_connections"
  value       = [for k, v in azurerm_virtual_network_gateway_connection.virtual_network_gateway_connections : v.virtual_network_gateway_id]
}

