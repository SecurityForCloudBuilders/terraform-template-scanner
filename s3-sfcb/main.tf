terraform {
  required_version = ">= 0.13.5"
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_s3_bucket" "terraform_igorschul_bucket" {
  bucket = "terraform-bucket-demo-oc"
  key    = "terraform-bucket-demo-oc.tfstate"
  acl    = "public"
  
  versioning {
    enabled = false
  }
  
  tags = {
    Owner         = "igors"
    Env           = "lab"
  }
}