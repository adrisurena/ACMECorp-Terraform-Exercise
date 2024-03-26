provider "aws" {
    region = var.region
  
}

resource "aws_s3_bucket" "acmeitstorage-adris-test" {
    bucket = var.name
  
}