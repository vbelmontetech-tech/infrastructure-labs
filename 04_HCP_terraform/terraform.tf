terraform {
  cloud {
    organization = "devops-projects-cloud" # Asegúrate de que sea tu nombre exacto de organización
    workspaces {
      name = "lab04-hcp-terraform" # Nombre exacto que pusiste en HCP Terraform
    }
  }

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }
}
