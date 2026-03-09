terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

module "minikube" {
  source  = "./modules/minikube"
  environment = var.environment
  cpus        = var.minikube_cpus
  memory      = var.minikube_memory
  namespace   = var.k8s_namespace
}

module "database" {
  source            = "./modules/database"
  environment       = var.environment
  postgres_port     = var.postgres_port
  postgres_db       = var.postgres_db
  postgres_user     = var.postgres_user
  postgres_password = var.postgres_password
}

module "jenkins" {
  source       = "./modules/jenkins"
  environment  = var.environment
  jenkins_port = var.jenkins_port
}
