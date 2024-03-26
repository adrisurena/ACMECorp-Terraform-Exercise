terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.42.0"
      
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "nginx-devops-acme-terraform" {
    ami = "ami-0c101f26f147fa7fd"
    instance_type = "t2.nano"
  
  tags = {
    Name = "TerraformTechnicalExercise"
}
}