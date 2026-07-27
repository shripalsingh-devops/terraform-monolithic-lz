module "rgs" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "vnet" {
  source     = "../../modules/azurerm_vnet"
  vnet       = var.vnet
  depends_on = [module.rgs]

}

module "subnet" {
  source     = "../../modules/azurerm_subnet"
  subnet     = var.subnet
  depends_on = [module.vnet]

}

module "pubip" {
  source = "../../modules/azurerm__public_ip"

  pubip = var.pubip

  depends_on = [module.rgs]

}
module "vms" {
  source = "../../modules/azurerm_vms"

  vms        = var.vms
  depends_on = [module.pubip, module.subnet]

}