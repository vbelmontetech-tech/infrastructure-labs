# =================================================================
# 1. CONFIGURACIÓN DEL PROVEEDOR (Conexión a tu entorno local)
# =================================================================
provider "aws" {
  region                      = "us-west-2"
  access_key                  = "anaccesskey"
  secret_key                  = "asecretkey"
  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    ec2 = "http://localhost:4566"
  }
}

# =================================================================
# 2. RECURSO PRINCIPAL (La máquina EC2 que vamos a destruir)
# =================================================================
# resource "aws_instance" "app_server" {
#   ami           = "ami-0026a04369a3093cc" # Tu ID compatible con Moto Server
#   instance_type = "t2.micro"             # El tamaño estándar del ejercicio

#   tags = {
#     Name = "hashicorp-learn"
#   }
# }
