provider "openstack" {
  user_name   = var.ostack_user
  password    = var.ostack_password
  tenant_name = var.tenant_name
  domain_name = var.domain_name
  auth_url    = var.ostack_url
  insecure    = true

  endpoint_overrides = {
    compute = var.ostack_endpoint_compute
    
  }
}

 

resource "openstack_compute_instance_v2" "ostack-vm" {
  name      = var.host-name
  image_id  = var.image_id
  flavor_id = var.flavor_id

  network {
    uuid = var.network-uuid
    name = var.network
  }

}

 