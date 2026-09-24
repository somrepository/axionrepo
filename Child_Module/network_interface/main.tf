resource "azurerm_network_interface" "network_interface" {
  for_each = var.network_interface

  name                = each.value.network_interface_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                         = each.value.ip_configuration_name
    subnet_id                    = each.value.subnet_id
    private_ip_address_allocation = each.value.private_ip_address_allocation
    public_ip_address_id = each.value.pupublic_ip_address_id 
  }
}


#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.example.id
#     private_ip_address_allocation = "Dynamic"
#   }
