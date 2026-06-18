resource "aws_instance" "servidor" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = var.tipo_instancia # Aquí conectamos con la variable

  tags = {
    Name = "Laboratorio-05-Profesional"
  }
}
