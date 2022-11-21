# Создаем ресурс load balancer в облаке Yandex

resource "yandex_lb_target_group" "web_balancer" {
   name = "target_group_1"
   region_id = var.ya_region
