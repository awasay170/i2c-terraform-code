terraform {
  required_providers {
    docker = {
    source = "kreuzwerker/docker"

}

}
}

provider docker {

}

resource "docker_image" "simplegoservice" {
  name = "registry.gitlab.com/alta3/simplegoservice"
  keep_locally = true
}

resource "docker_container" "mycontainer" {
  name = var.container_name
  image = docker_image.simplegoservice.image_id
  ports {
    internal = var.internal_port
    external = var.external_port
}
}
