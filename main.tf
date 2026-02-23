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

resource "aws_security_group_rule" "demo_sg_rule" {
  security_group_id = aws_security_group.demo_sg
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  type              = "ingress"
}

resource "aws_security_group" "demo_sg" {
  name   = "demo_sg_1"
  vpc_id = var.vpc_id
}
