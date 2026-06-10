terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "mock_key"
  secret_key                  = "mock_secret"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    ec2 = "http://localhost:4566"
    vpc = "http://localhost:4566"
  }
}

resource "aws_vpc" "laboratorio_local" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "mi-vpc-local-profesional"
  }
}
