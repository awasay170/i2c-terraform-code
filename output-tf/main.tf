terraform {
  required_providers {
    docker = {
    source = "kreuzwerker/docker"
    version = "3.0.2"

  }

 }  
}

provider "docker" {
}

resource "docker_image" "nginx" {
  name = "nginx:1.19.6"
  keep_locally = true

}

resource "docker_container" "newimageoutput" {
  name = var.container_name
  image = docker_image.nginx.image_id
  ports {
  internal = 80
  external = 2225
}
}

