rgs = {

  rgs1 = {
    name     = "shri-prod-rg"
    location = "centralindia"

  }
   rgs2 = {
    name     = "jaya"
    location = "centralindia"

  }
}

vnet = {
  vnet1 = {

    name                = "vnet"
    location            = "centralindia"
    resource_group_name = "shri"
    address_space       = ["10.0.0.0/16"]

  }
}

subnet = {
  subnet1 = {

    name                 = "frontend-subnet"
    resource_group_name  = "shri"
    virtual_network_name = "vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {

    name                 = "backend-subnet"
    resource_group_name  = "shri"
    virtual_network_name = "vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

pubip = {

  pubip1 = {

    name                = "frontend-pubip"
    resource_group_name = "shri"
    location            = "centralindia"
    allocation_method   = "Static"
  }
  pubip2 = {

    name                = "backend-pubip"
    resource_group_name = "shri"
    location            = "centralindia"
    allocation_method   = "Static"
  }
}

vms = {

  vm1 = {

    nic_name            = "frontend-nic"
    location            = "centralindia"
    resource_group_name = "shri"

    vm_name = "frontend-vm"

    size                            = "Standard_D2s_v3"
    admin_username                  = "adminuser"
    admin_password                  = "shri@1234"
    disable_password_authentication = false
    subnet_name                     = "frontend-subnet"
    virtual_network_name            = "vnet"
    pubip_name                      = "frontend-pubip"
  }
  vm2 = {

    nic_name            = "backend-nic"
    location            = "centralindia"
    resource_group_name = "shri"

    vm_name = "backend-vm"

    size                            = "Standard_D4_v5"
    admin_username                  = "adminuser"
    admin_password                  = "qwert1SDG6798754"

    disable_password_authentication = false
    subnet_name                     = "backend-subnet"
    virtual_network_name            = "vnet"
    pubip_name                      = "backend-pubip"
  }
}