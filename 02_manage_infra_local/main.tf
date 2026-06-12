provider "aws" {
  region = "us-west-2"
}

# Módulo oficial de la comunidad para crear la red VPC local
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.19.0"

  name = "vpc-laboratorio-local"
  cidr = "10.0.0.0/16"

  azs             = ["us-west-2a", "us-west-2b", "us-west-2c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24"]

  enable_dns_hostnames = true
}

# Tu máquina virtual EC2 conectada dinámicamente al módulo de red y a las variables
resource "aws_instance" "app_server" {
  ami           = "ami-0026a04369a3093cc" # ID simulado compatible con Moto Server
  instance_type = var.instance_type

  vpc_security_group_ids = [module.vpc.default_security_group_id]
  subnet_id              = module.vpc.private_subnets[0]

  tags = {
    Name = var.instance_name
  }
}
