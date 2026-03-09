variable "environment" {
  type = string
}

variable "cpus" {
  type    = number
  default = 2
}

variable "memory" {
  type    = number
  default = 4096
}

variable "namespace" {
  type    = string
  default = "default"
}
