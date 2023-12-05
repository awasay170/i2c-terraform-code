variable "container_name" {
  type = string
  default = "THISISVAR"

}
variable "internal_port" {
  description = "Internal port of the container"
  type        = number
  default     = 80
}

variable "external_port" {
  description = "External port on the container"
  type        = number
  default     = 2229
}
