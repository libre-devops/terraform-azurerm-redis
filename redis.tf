resource "azurerm_redis_cache" "redis" {
  name                          = var.redis_name
  location                      = var.location
  resource_group_name           = var.rg_name
  capacity                      = var.capacity
  family                        = title(var.family)
  sku_name                      = title(var.sku)
  enable_non_ssl_port           = var.enable_non_ssl_port
  minimum_tls_version           = try(var.minimum_tls_version, "1.2")
  private_static_ip_address     = try(var.private_static_ip_address, null)
  subnet_id                     = var.private_static_ip_address != null ? try(var.subnet_id, null) : null
  public_network_access_enabled = try(var.public_network_access_enabled, null)
  replicas_per_master           = try(var.replicas_per_master, null)
  replicas_per_primary          = var.replicas_per_master != null ? try(var.replicas_per_master, var.replicas_per_primary, null) : null
  redis_version                 = try(var.redis_version, 6)
  shard_count                   = var.sku != "Premium" ? null : try(var.shard_count, null)
  zones                         = try(var.zones)
  tags                          = var.tags


  dynamic "redis_configuration" {
    for_each = var.redis_configuration
    content {

      aof_backup_enabled = false

    }
  }

  dynamic "identity" {
    for_each = length(var.identity_ids) == 0 && var.identity_type == "SystemAssigned" ? [var.identity_type] : []
    content {
      type = var.identity_type
    }
  }

  dynamic "identity" {
    for_each = length(var.identity_ids) == 0 && var.identity_type == "SystemAssigned, UserAssigned" ? [var.identity_type] : []
    content {
      type         = var.identity_type
      identity_ids = length(var.identity_ids) > 0 ? var.identity_ids : []
    }
  }

  dynamic "identity" {
    for_each = length(var.identity_ids) > 0 || var.identity_type == "UserAssigned" ? [var.identity_type] : []
    content {
      type         = var.identity_type
      identity_ids = length(var.identity_ids) > 0 ? var.identity_ids : []
    }
  }
}