provider "azurerm" {
  subscription_id = "20c40656-d232-4192-8690-e596f017d878"
  tenant_id       = "e11fd634-26b5-47f4-8b8c-908e466e9bdf"
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

