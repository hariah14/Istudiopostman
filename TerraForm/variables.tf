
variable "resource_group_name" {
    #default = "azure_resource_group"
    default = "acemicro-testharish-centralindia-rg"
}

variable "location" {
    default = "Central India"
}
variable "cluster_name" {
    default = "acemicro-cbharishvnet"
}
variable "virtual_network_name" {
  description = "Virtual network name"
  default     = "acemicro-cbharishvnet"
}
variable "virtual_network_address_prefix" {
  description = "Containers DNS server IP address."
  default     = "10.0.0.0/16"
}
variable "aks_subnet_name_1" {
  description = "AKS Subnet Name."
  default     = "harishsubnet101101"
}
variable "aks_subnet_address_prefix_1" {
  description = "Containers DNS server IP address."
  default     = "10.0.0.0/24"
}
variable "tags" {
  type = map(string)
  default = {
    source = "terraform"
  }
}
