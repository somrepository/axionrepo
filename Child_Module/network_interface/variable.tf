variable "network_interface" {
  type = map(object({
    network_interface_name = string
    location               = string
    resource_group_name    = string
    ip_configuration_name  = string
    subnet_id              = string
    private_ip_address_allocation = list(string)
    public_ip_address_id = list(string)
  }))

}
