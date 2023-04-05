module "rg" {
  source = "registry.terraform.io/libre-devops/rg/azurerm"

  rg_name  = "rg-${var.short}-${var.loc}-${terraform.workspace}-build" // rg-ldo-euw-dev-build
  location = local.location                                            // compares var.loc with the var.regions var to match a long-hand name, in this case, "euw", so "westeurope"
  tags     = local.tags

  #  lock_level = "CanNotDelete" // Do not set this value to skip lock
}

resource "random_string" "random" {
  length  = 6
  special = false
}

module "redis" {
  source = "registry.terraform.io/libre-devops/redis/azurerm"

  rg_name  = module.rg.rg_name
  location = module.rg.rg_location
  tags     = module.rg.rg_tags

  capacity      = 0
  family        = "C"
  redis_name    = "lbdoredis${random_string.random.result}"
  sku           = "Basic"
  identity_type = "SystemAssigned"

  redis_configuration = {
    aof_backup_enabled = false
  }
}
