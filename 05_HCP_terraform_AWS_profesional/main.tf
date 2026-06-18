data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["al2023-ami-2023*-x86_64"]
  }
}

resource "aws_instance" "servidor" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro" # Cambiado a t3.micro

  tags = {
    Name = "Laboratorio-05-Profesional"
  }
}
