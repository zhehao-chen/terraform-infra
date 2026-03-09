output "url" {
  value = "http://localhost:${var.jenkins_port}"
}

output "port" {
  value = var.jenkins_port
}
