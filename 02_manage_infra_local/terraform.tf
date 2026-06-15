terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.79.0" # Eliminamos el candado de la versión 5 para aceptar la 6
    }
  }
  required_version = ">= 1.2"
}
