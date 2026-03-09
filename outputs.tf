# Minikube outputs
output "minikube_profile" {
  description = "Minikube profile name"
  value       = module.minikube.profile_name
}

output "minikube_namespace" {
  description = "Kubernetes namespace"
  value       = module.minikube.namespace
}

# Database outputs
output "database_host" {
  description = "PostgreSQL host"
  value       = module.database.host
}

output "database_port" {
  description = "PostgreSQL port"
  value       = module.database.port
}

output "database_name" {
  description = "PostgreSQL database name"
  value       = module.database.db_name
}

# Jenkins outputs
output "jenkins_url" {
  description = "Jenkins URL"
  value       = module.jenkins.url
}

output "jenkins_port" {
  description = "Jenkins port"
  value       = module.jenkins.port
}

# Registry output for Jenkins pipeline
output "docker_registry" {
  description = "Docker registry URL"
  value       = "docker.io/zhehaochen"
}
