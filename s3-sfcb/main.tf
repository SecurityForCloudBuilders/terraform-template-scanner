terraform {
  required_version = ">= 0.13.5"
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_s3_bucket" "terraform_igorschul_bucket" {
  bucket = "terraform-bucket-demo-sfcb"
  key    = "terraform-bucket-demo-sfcb.tfstate"
  acl    = "public"
  
  versioning {
    enabled = true
  }
  
  tags = {
    Owner         = "igors"
    Env           = "lab"
  }
}