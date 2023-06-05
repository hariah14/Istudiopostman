
resource "azurerm_resource_group" "k8s" {
    name     = "${var.resource_group_name}"
    location = "${var.location}"
}

resource "azurerm_virtual_network" "virtualnet" {
  name                = "${var.virtual_network_name}"
  location            = "${azurerm_resource_group.k8s.location}"
  resource_group_name = "${azurerm_resource_group.k8s.name}"
  address_space       = ["${var.virtual_network_address_prefix}"]

 subnet {
   name           = "${var.aks_subnet_name_1}-1"
   address_prefix = "${var.aks_subnet_address_prefix_1}"
 }

  tags = "${var.tags}"
}

data "azurerm_subnet" "harishsubnet1-1" {
  name                 = "${var.aks_subnet_name_1}-1"
  virtual_network_name = "${azurerm_virtual_network.virtualnet.name}"
  resource_group_name  = "${azurerm_resource_group.k8s.name}"
  depends_on           = [azurerm_virtual_network.virtualnet]
}
