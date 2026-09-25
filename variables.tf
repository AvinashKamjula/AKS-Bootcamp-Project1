variable "resource_group_name" {
  description = "Resource group name to create/use for this deployment"
  type        = string
  default     = "rg-aks-demo"
}

variable "subscription_id" {
  description = "Azure subscription ID. Leave empty to use the default Azure CLI subscription."
  type        = string
  default     = null
}

variable "location" {
  description = "Azure location"
  type        = string
  default     = "canadacentral"
}

variable "vnet_name" {
  type    = string
  default = "aks-vnet"
}

variable "address_space" {
  type    = list(string)
  default = ["10.1.0.0/16"]
}

variable "aks_subnet_name" {
  type    = string
  default = "aks-subnet"
}

variable "aks_subnet_prefix" {
  description = "AKS subnet CIDR. Must be large enough for the node pool, load balancer, and surge capacity. /23 is recommended for a 3-node default pool."
  type        = string
  default     = "10.1.0.0/23"
}

variable "log_analytics_name" {
  type    = string
  default = "la-aks-demo"
}

variable "log_analytics_sku" {
  type    = string
  default = "PerGB2018"
}

variable "log_analytics_retention_in_days" {
  type    = number
  default = 30
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "cluster_name" {
  type    = string
  default = "aks-cluster"
}

variable "dns_prefix" {
  type    = string
  default = "aksdemo"
}

variable "node_pool_name" {
  type    = string
  default = "agentpool"
}

variable "node_count" {
  type    = number
  default = 3
}

variable "node_vm_size" {
  type    = string
  default = "standard_d2as_v4"
}

variable "os_disk_size_gb" {
  type    = number
  default = 30
}

variable "max_pods" {
  type    = number
  default = 110
}

variable "network_plugin" {
  type    = string
  default = "azure"
}

variable "network_policy" {
  type    = string
  default = "azure"
}

variable "dns_service_ip" {
  type    = string
  default = "10.2.0.10"
}

variable "service_cidr" {
  type    = string
  default = "10.2.0.0/16"
}

variable "docker_bridge_cidr" {
  type    = string
  default = "172.17.0.1/16"
}

variable "linux_admin_username" {
  type    = string
  default = "azureuser"
}

variable "ssh_public_key" {
  description = "SSH public key contents or path to a public key file for the Linux node admin user"
  type        = string
  default     = ""
}
