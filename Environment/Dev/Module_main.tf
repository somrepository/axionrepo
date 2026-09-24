module "rgm" {
  source         = "../../Child_Module/resource_group"
  resource_group = var.resource_group_parent


# }
# module "vnetm" {
#   source          = "../../Child_Module/Virtual_network"
#   virtual_network = var.virtual_network_parent
#   depends_on      = [module.rgm]

# }

# module "subentm" {
#   source = "../../Child_Module/subnet"

#   subnet = var.subnet_parent
  
# }

# module "network_interfacem" {
#   source = "../../Child_Module/network_interface"

#   network_interface = var.virtual_network_parent
  
# }

# module "pipm" {
#   source = "../../Child_Module/pip"

#   public_ip = var.pip_parent
  
}

