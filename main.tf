provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
}
#Calling modules
module "webserver" {
  source         = "../modules/webserver"
  vpc_id         = aws_vpc.vpc.id
  cidr_block     = "10.0.0.0/24"
  webserver_name = "myweb"
  ami            = "ami-06b21ccaeff8cd686"
  instance_type  = "t2.medium"
}