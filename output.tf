output "redis_configuration" {
  value       = azurerm_redis_cache.redis.redis_configuration
  description = "The configuration block of the redis cache"
}

output "redis_hostname" {
  value       = azurerm_redis_cache.redis.hostname
  description = "The hostname of the redis"
}

output "redis_id" {
  value       = azurerm_redis_cache.redis.id
  description = "The ID of the redis"
}

output "redis_identity" {
  value       = azurerm_redis_cache.redis.identity
  description = "The identity block of the redis cache"
}

output "redis_name" {
  value       = azurerm_redis_cache.redis.name
  description = "The name of the redis"
}

output "redis_port" {
  value       = azurerm_redis_cache.redis.port
  description = "The port of the redis cache"
}

output "redis_primary_access_key" {
  value       = azurerm_redis_cache.redis.primary_access_key
  description = "The primary access key of the redis"
  sensitive   = true
}

output "redis_primary_connection_string" {
  value       = azurerm_redis_cache.redis.primary_connection_string
  description = "The primary blob connection string of the redis"
  sensitive   = true
}

output "redis_secondary_access_key" {
  value       = azurerm_redis_cache.redis.secondary_access_key
  description = "The secondary access key of the redis"
  sensitive   = true
}

output "redis_secondary_connection_string" {
  value       = azurerm_redis_cache.redis.secondary_connection_string
  description = "The primary blob connection string of the redis"
  sensitive   = true
}

output "redis_ssl_port" {
  value       = azurerm_redis_cache.redis.ssl_port
  description = "The ssl port of the redis"
}
