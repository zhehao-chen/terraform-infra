# Jenkins is installed locally (not managed by Terraform)
# This module only references the existing local Jenkins instance

terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

resource "null_resource" "jenkins_check" {
  triggers = {
    jenkins_url = "http://localhost:${var.jenkins_port}"
  }

  provisioner "local-exec" {
    command = "curl -s -o /dev/null http://localhost:${var.jenkins_port} || echo 'Warning: Jenkins not reachable at port ${var.jenkins_port}'"
  }
}
