output "space_heroes" {
  value = data.http.iss.response_body

}

output "super_heroes" {
  value = jsondecode(data.http.iss.response_body)
}
