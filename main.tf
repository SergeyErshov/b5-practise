# Создание первой ВМ с помощью написанного модуля

module "yandex_instance_1" {
  source                = "./modules/create_vm"
  instance_family_image = "lemp"
#  instance_subnet_name  = "a-ru-central1-a"
  instance_name         = "websrv01"
#  zone_name             = "ru-central1-a"
}

module "yandex_instance_2" {
  source                = "./modules/create_vm"
  instance_family_image = "lamp"
#  instance_subnet_name  = "a-ru-central1-b"
  instance_name         = "websrv02"
#  zone_name             = "ru-central1-b"
}

