provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "703329362-poc-s3"
    key    = "sg/terraform.tfvars"
    region = "us-east-1"
  }
}


resource "aws_security_group" "demo_sg" {
  name   = "demo_sg_1"
  vpc_id = var.vpc_id
}
