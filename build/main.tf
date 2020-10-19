provider "azurerm" {
  subscription_id = ""
  tenant_id       = ""
  features {}
}

module "resource_group" {
  #source                  = "git@github.com:kgopi1/TF_modules.git//az//resource_group"
  source                  = "git@github.com:kgopi1/TF_modules.git//az//resource_group?ref=v0.0.1"
  resource_group_name     = ["rg-apt-kg-test2", "rg-apt-kg-test3"]
  resource_group_location = "NorthEurope"
}

# variable "exch_server" {
#   default = {
#     name = ["host01","host02"]
#     size = 100
#     zones = "${var.avzones}" ? split("","${element(["1","2","3"], "${count.index}")}") : null
#   }
# }

# locals {
#   host_name = var.exch_server["name"]
#   host_count = length(local.host_name)
#   av         = index(local.host_name, )
#   #zones = "${var.avzones}" ? split("","${element(["1","2","3"], "${count.index}")}") : null
# }

