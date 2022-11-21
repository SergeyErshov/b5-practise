# Создаем ресурс load balancer в облаке Yandex

# Создаем целевую группу web_balancer

resource "yandex_lb_target_group" "lb_tg_01" {
  name      = "lbtg01"
  region_id = var.ya_region

  target {
    subnet_id = module.yandex_instance_1.vpc_subnet
    address   = module.yandex_instance_1.internal_ipaddr_vm
  }

  target {
    subnet_id = module.yandex_instance_2.vpc_subnet
    address   = module.yandex_instance_2.internal_ipaddr_vm
  }
}
