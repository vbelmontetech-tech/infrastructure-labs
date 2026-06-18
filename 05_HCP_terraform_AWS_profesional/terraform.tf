terraform {
  required_version = ">= 1.9.0"
  cloud {
    organization = "devops-projects-cloud" # Cambia por tu nombre de organización
    workspaces {
      name = "lab05-aws-ec2-instancia"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.79.0"
    }
  }
}
