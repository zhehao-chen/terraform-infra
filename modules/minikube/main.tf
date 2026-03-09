terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

resource "null_resource" "minikube" {
  triggers = {
    profile   = "${var.environment}-cluster"
    cpus      = var.cpus
    memory    = var.memory
  }

  provisioner "local-exec" {
    command = <<-EOT
      minikube start \
        --profile=${var.environment}-cluster \
        --cpus=${var.cpus} \
        --memory=${var.memory} \
        --driver=docker
    EOT
  }

  provisioner "local-exec" {
    when    = destroy
    command = "minikube delete --profile=${self.triggers.profile}"
  }
}

resource "null_resource" "namespace" {
  depends_on = [null_resource.minikube]

  provisioner "local-exec" {
    command = "kubectl create namespace ${var.namespace} --context=${var.environment}-cluster || true"
  }
}
