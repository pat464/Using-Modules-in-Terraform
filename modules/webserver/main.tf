#tf version
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}
#subnet
resource "aws_subnet"  "webserver" {
  vpc_id = var.vpc_id
  cidr_block = var.cidr_block
}
#instance
resource "aws_instance" "webserver" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = aws_subnet.webserver.id
  tags = {
    name = "${var.webserver_name} webserver"
  }
}