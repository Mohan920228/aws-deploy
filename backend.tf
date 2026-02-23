terraform {
  backend "s3" {
    bucket = "703329362-poc-s3"
    key    = "sg/terraform.tfstate"
    region = "us-east-1"
  }
}
