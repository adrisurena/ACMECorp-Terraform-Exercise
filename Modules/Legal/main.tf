provider "aws" {
    region = var.region
  
}

resource "aws_s3_bucket" "legalteamacmecorp-testprovisioning" {
    bucket = var.name
  
}

resource "aws_instance" "nginx-devops-acme-terraform" {
    ami = "ami-0c101f26f147fa7fd"
    instance_type = "t2.medium"
  
  tags = {
    Name = "LegalInstance1"
}
}