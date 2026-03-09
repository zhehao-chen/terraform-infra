variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
}

variable "minikube_cpus" {
  description = "Number of CPUs for Minikube"
  type        = number
  default     = 2
}

variable "minikube_memory" {
  description = "Memory for Minikube in MB"
  type        = number
  default     = 4096
}

variable "postgres_port" {
  description = "PostgreSQL host port"
  type        = number
  default     = 5432
}

variable "postgres_db" {
  description = "PostgreSQL database name"
  type        = string
  default     = "ecommerce"
}

variable "postgres_user" {
  description = "PostgreSQL username"
  type        = string
  default     = "admin"
}

variable "postgres_password" {
  description = "PostgreSQL password"
  type        = string
  sensitive   = true
  default     = "password"
}

variable "jenkins_port" {
  description = "Jenkins host port"
  type        = number
  default     = 8080
}

variable "k8s_namespace" {
  description = "Kubernetes namespace"
  type        = string
  default     = "default"
}
