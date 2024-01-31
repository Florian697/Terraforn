variable "new_user" {
  type    = string
  default = "meta.txt"
}

variable "instance_zone" {
  default     = "#"
  type        = string
  description = "Instance availability zone"
  validation {
    condition     = contains(toset(["#", "#", "#"]), var.instance_zone)
    error_message = "Select availability zone from the list: #, #, #."
  }
  sensitive = true
  nullable  = false
}

variable "platform_id" {
  default     = "#"
  type        = string
  description = "Type of the virtual machine to create."
}

variable "instance_image_id" {
  default     = "f#"
  type        = string
  description = "OS image id of created VM"
}

variable "instance_subnet_id" {
  default     = "#"
  type        = string
  description = "Network subnet id to which will be connected VM"
}