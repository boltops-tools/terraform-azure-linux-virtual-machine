variable "name" {
  description = "Name of vm"
  type        = string
  default     = "linux-vm"
}

variable "resource_group_name" {
  description = "The name of an existing resource group to be imported."
  type        = string
}

variable "subnet_id" {
  description = "Subnet to launch VM in"
  type        = string
}
