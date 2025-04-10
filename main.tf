terraform {
  required_providers {
    docker = {
        source = "kreuzwerker/docker"
        version = "~> 2.9.0"
    }
  }
}

provider "docker" {
    host = "npipe:////./pipe/docker_engine"
}

resource "docker_image" "nginx" {
  name = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx_container" {
  name = "my-nginx-container"
  image = docker_image.nginx.latest

  ports {
    internal = 80
    external = 8081
  }
}