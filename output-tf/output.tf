output "container_id" {
  value = docker_container.newimageoutput.id
}

output "image_id" {
  value = docker_image.nginx.image_id
}
