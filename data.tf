variable "vpc_id" {
  default = "vpc-0923ea1468ce31563"
}

data "aws_vpc" "poc_vpc" {
  id = var.vpc_id
}
