variable "virtual_network" {
    type = map(object({
      name = string
      location = string
      address_space = list(string)
      resource_group_name = string 
    }))
}