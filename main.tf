provider "openstack" {
  user_name   = var.ostack_user
  password    = var.ostack_password
  tenant_name = var.tenant_name
  domain_name = var.domain_name
  auth_url    = var.ostack_url
  insecure    = true

  endpoint_overrides = {
    compute = var.ostack_endpoint_compute
    image = var.ostack_endpoint_image
    network = var.ostack_endpoint_network
    
  }
}

resource "openstack_compute_instance_v2" "ostack-vm" {
  name      = var.host-name
  image_name  = var.image_name
  flavor_name = var.flavor_name

  network {
    name = var.network
  }

}

 