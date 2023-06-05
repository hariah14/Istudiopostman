provider "azurerm" {  
  client_id = "${var.ARM_CLIENT_ID}"
  client_secret = "${var.ARM_CLIENT_SECRET}"
  tenant_id = "${var.ARM_Tenant_ID}"
  subscription_id = "${var.ARM_Subscription_ID}"
  features {}
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.33.0"
    }

    random = {
      source = "hashicorp/random"
      version = "=3.4.3"
    }
  }
}

variable "ARM_CLIENT_ID" {
  type    = string
}

variable "ARM_CLIENT_SECRET" {
  type    = string
}
variable "ARM_Tenant_ID" {
  type    = string
}
variable "ARM_Subscription_ID" {
  type    = string
}

resource "random_integer" "random_integer" {
	min = 1
	max = 50000
}
