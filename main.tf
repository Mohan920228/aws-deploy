provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "git_terraform_sg" {
  name   = "git_terraform_sg"
  vpc_id = var.vpc_id
  tags = {
    name = "git_terraform_sg"
  }
}
output "sg_id" {
  value = aws_security_group.git_terraform_sg.id
}
