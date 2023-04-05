variable "capacity" {
  type        = number
  description = "The capacity of the redis cache"
}

variable "enable_non_ssl_port" {
  type        = bool
  description = "Whether a Non SSL port should be enabled, defaults to false"
  default     = false
}

variable "family" {
  type        = string
  description = "The family of the redis cache, can either be C or P"
}

variable "identity_ids" {
  description = "Specifies a list of user managed identity ids to be assigned to the VM."
  type        = list(string)
  default     = []
}

variable "identity_type" {
  description = "The Managed Service Identity Type of this Virtual Machine."
  type        = string
  default     = ""
}

variable "location" {
  description = "The location for this resource to be put in"
  type        = string
}

variable "minimum_tls_version" {
  type        = string
  description = "The minimum tls version of the cache, defaut is 1.2"
  default     = "1.2"
}

variable "patch_schedule" {
  type        = any
  description = "The patch schedule block if declared"
  default     = null
}

variable "private_static_ip_address" {
  type        = bool
  description = "Whether a static ip should be used if this redis cache is connected to a subnet"
  default     = null
}

variable "public_network_access_enabled" {
  type        = bool
  description = "Whether the Redis can be reach by private AND public or Private only, defaults to true"
  default     = true
}

variable "redis_configuration" {
  description = "The redis configuration block"
  type        = any
  default     = null
}

variable "redis_name" {
  type        = string
  description = "The name of the cache, note, must be globally unique"
}

variable "redis_version" {
  type        = number
  description = "The version of redis to be used, default is 6"
  default     = 6
}

variable "replicas_per_master" {
  type        = string
  description = "The amount of replicas per master configured. default is null"
  default     = null
}

variable "replicas_per_primary" {
  type        = string
  description = "The amount of replicas per primary configured. default is null"
  default     = null
}

variable "rg_name" {
  description = "The name of the resource group, this module does not create a resource group, it is expecting the value of a resource group already exists"
  type        = string
  validation {
    condition     = length(var.rg_name) > 1 && length(var.rg_name) <= 24
    error_message = "Resource group name is not valid."
  }
}

variable "shard_count" {
  type        = string
  description = "The shard count if the SKU is premium"
  default     = null
}

variable "sku" {
  type        = string
  description = "The sku of the redis cache, Basic, Standard or Premium"
}

variable "subnet_id" {
  type        = string
  description = "The id of the subnet this redis cache is connected to"
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "A map of the tags to use on the resources that are deployed with this module."

  default = {
    source = "terraform"
  }
}

variable "zones" {
  type        = list(string)
  description = "The zones in which a redis cache is deployed, default is null"
  default     = null
}
