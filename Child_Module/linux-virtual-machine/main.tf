resource "azurerm_linux_virtual_machine" "linux_virtual_machine" {
  for_each = var.linux_virtual_machine

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = each.value.size
  admin_username      = each.value.admin_username
  admin_password      = each.value.admin_password

  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]

  #   admin_ssh_key {
  #     username   = "adminuser"
  #     public_key = file("~/.ssh/id_rsa.pub")
  #   }

  os_disk {
    caching              = each.value.caching
    storage_account_type = each.value.storage_account_type
  }

  source_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }
}


# size                = "Standard_D4_v5"
#   admin_username      = "adminuser"
#   network_interface_ids = [
#     azurerm_network_interface.example.id,
#   ]

#   admin_ssh_key {
#     username   = "adminuser"
#     public_key = file("~/.ssh/id_rsa.pub")
#   }

#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-jammy"
#     sku       = "22_04-lts"
#     version   = "latest"
#   }
