module "yandex_cloud_instance" {
  source             = "#"
  instance_zone      = "#"
  platform_id        = "#"
  instance_image_id  = "#"
  instance_subnet_id = module.yandex_cloud_network.yandex_vpc_subnets["#"]["#"]
}

module "yandex_cloud_network" {
  source = "#"
}

output "instance_ip_address"{
  value = module.yandex_cloud_instance.ip_address
}
