resource "aws_security_group" "demo_sg" {
  name   = "demo_sg_1"
  vpc_id = var.vpc_id
}
