variable "environment" {
  type = string
}

variable "postgres_port" {
  type    = number
  default = 5432
}

variable "postgres_db" {
  type    = string
  default = "ecommerce"
}

variable "postgres_user" {
  type    = string
  default = "admin"
}

variable "postgres_password" {
  type      = string
  sensitive = true
}
