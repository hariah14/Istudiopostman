
variable "resource_group_name" {
    #default = "azure_resource_group"
    default = "acemicro-testswaroop1-centralindia-rg"
}

variable "location" {
    default = "Central India"
}
variable "cluster_name" {
    default = "acemicro-cbtestsatya"
}
variable "virtual_network_name" {
  description = "Virtual network name"
  default     = "acemicro-cbtestsatya"
}
variable "virtual_network_address_prefix" {
  description = "Containers DNS server IP address."
  default     = "15.0.0.0/8"
}
variable "aks_subnet_name_1" {
  description = "AKS Subnet Name."
  default     = "cbtestsubnet"
}
variable "aks_subnet_address_prefix_1" {
  description = "Containers DNS server IP address."
  default     = "15.0.0.0/16"
}
variable "tags" {
  type = map(string)
  default = {
    source = "terraform"
  }
}
