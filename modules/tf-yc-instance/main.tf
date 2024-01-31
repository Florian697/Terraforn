resource "yandex_compute_instance" "vm-1" {
  name        = "chapter5"
  zone        = var.instance_zone
  platform_id = var.platform_id

  scheduling_policy {
    preemptible = false
  }

  # Resource configuration:
  resources {
    cores  = 2
    memory = 2
  }

  # Boot disk:
  # Image of OS for new VM
  boot_disk {
    initialize_params {
      image_id = var.instance_image_id
    }
  }

  # Network interface:
  # subnet_id to which will be connected VM
  network_interface {
    subnet_id = var.instance_subnet_id
    nat       = true
  }

  # Resource metadata:
  # Could provide script,which will be launched at start of VM
  # And list of ssh - keys to access VM

  metadata = {
    user-data = file(var.new_user)
    ssh-keys  = "ansible:${file("~/.ssh/id_rsa.pub")}"
  }
}