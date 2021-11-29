# This is where you put your resource declaration
module "linux_vm" {
  source = "../.."

  resource_group_name = var.resource_group_name
  name                = var.name
  subnet_id           = module.vnet.vnet_subnets.app.id
}

module "vnet" {
  source = "../../modules/network"

  resource_group_name = var.resource_group_name
  subnets = {
    "app" = {
      address_prefixes = ["10.0.0.0/24"]
      service_endpoints = ["Microsoft.Sql", "Microsoft.Storage"]
    }
    "db" = {
      address_prefixes = ["10.0.1.0/24"]
      enforce_private_link_endpoint_network_policies = false
    }
  }

  # vnet_name           = var.vnet_name
  # address_space       = var.address_space
  # dns_servers         = var.dns_servers
  # tags                = var.tags
}
