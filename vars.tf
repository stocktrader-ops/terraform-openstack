# Configure these variables

variable "ostack_user" {
  description = "openstack username"
}

variable "ostack_password" {
  description = "openstack password"
}
variable "ostack_url" {
  description = "openstack access url"
  default     = "https://129.40.156.138:5000/v3/"
}


variable "tenant_name" {
  description = "openstack project name"
  default     = "IBMDemo"
}
variable "domain_name" {
  description = "openstack domain_name"
  default     = "Default"
}

variable "image_id" {
  description = "id of the image to clone"
  default     = "0bb61013-77dc-4a9c-8b2b-ff28788f761f"
}
variable "flavor_id" {
  description = "id of the machine flavor"
  default     = "e6fff081-df1e-46bc-bc58-165fe8076153"
}

variable "network" {
  description = "network name"
  default     = "Vlan133"
}
variable "network-uuid" {
  description = "uuid of the network"
  default     = "af662317-7a26-4156-8fec-35ec766060eb"
}

variable "host-name" {
  description = "new hostname"
  default     = "gas-ostack"
}
