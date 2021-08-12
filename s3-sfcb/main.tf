terraform {
  required_version = ">= 0.13.5"
}

provider "aws" {
  region = var.regions
}


resource "aws_s3_bucket" "terraform_igorschul_bucket" {
  bucket = "terraform-bucket-demo-sfcb"
  key    = "terraform-bucket-demo-sfcb.tfstate"
  acl = "private"
  
  versioning {
    enabled = true
  }
  
  tags = {
    CreatedBy     = var.tags.owner
    Env           = var.tags.env
  }
}