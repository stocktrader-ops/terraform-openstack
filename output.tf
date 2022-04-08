output "vm_ip" {
    value = openstack_compute_instance_v2.ostack-vm.network.0.fixed_ip_v4
}