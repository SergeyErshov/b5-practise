variable "instance_family_image" {
   description = "Specify Image family for Instance"
   type = string
   default = "lemp"
}

variable "instance_subnet_name" {
   description = "Specify name of subnet for creating instance"
   type = string
   default = "a-ru-central1-a"
}

variable "instance_name" {
  description = "Specify name of creating instance"
  type = string
}

variable "zone_name" {
   description = "Specify availability zone for VM"
   type = string
   default = "ru-central1-a"
}
