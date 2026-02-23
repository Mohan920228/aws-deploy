provider "aws" {
  profile = "pocrole"
  region  = "us-east-1"
}

resource "aws_security_group" "git_terraform_sg" {
  name   = "git_terraform_sg"
  vpc_id = data.aws_vpc.poc_vpc
  tags = {
    name = "git_terraform_sg"
  }
}
output "sg_id" {
  value = aws_security_group.git_terraform_sg.id
}
