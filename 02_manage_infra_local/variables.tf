variable "instance_name" {
  description = "Valor de la etiqueta Name para la instancia EC2"
  type        = string
  default     = "mi-servidor-local"
}

variable "instance_type" {
  description = "Tipo de la instancia EC2 simulada"
  type        = string
  default     = "t2.micro"
}
