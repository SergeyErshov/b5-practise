# Создаем целевую группу

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

data "yandex_lb_target_group" "lbtg" {
   name = "lbtg01"
}

# Создаем ресурс load balancer в облаке Yandex

resource "yandex_lb_network_load_balancer" "lb01" {
   name = "web-balancer-01"

   listener {
      name = "web-listener"
      port = 80
      external_address_spec {
         ip_version = "ipv4"
      }
   }

   attached_target_group {
      target_group_id = data.yandex_lb_target_group.lbtg.id
    
      healthcheck {
         name = "http"
         http_options {
            port = 80
            path = "/ping"
         }
      }
   }
}

