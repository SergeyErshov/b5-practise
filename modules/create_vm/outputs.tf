output "internal_ipaddr_vm" {
   description = "internal ip 0f VM"
   value = yandex_compute_instance.vm.network_interface.0.ip_address
}

output "external_ipaddr_vm" {
   description = "external ip of VM"
   value = yandex_compute_instance.vm.network_interface.0.nat_ip_address
}

