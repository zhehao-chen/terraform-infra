terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

resource "docker_image" "jenkins" {
  name = "jenkins/jenkins:lts"
}

resource "docker_container" "jenkins" {
  name  = "jenkins-${var.environment}"
  image = docker_image.jenkins.image_id

  ports {
    internal = 8080
    external = var.jenkins_port
  }

  volumes {
    volume_name    = docker_volume.jenkins_home.name
    container_path = "/var/jenkins_home"
  }

  restart = "unless-stopped"
}

resource "docker_volume" "jenkins_home" {
  name = "jenkins-home-${var.environment}"
}
