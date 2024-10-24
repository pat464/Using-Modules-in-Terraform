variable "vpc_id" {
  type = string
  description = "VPC ID"
}
variable "cidr_block" {
  type = string
  description = "subnet CIDR Block"
}
variable "webserver_name" {
  type = string
  description = "webserver name"
}
variable "ami" {
  type = string
  description = "webserver AMI"
}
variable "instance_type" {
  type = string
  description = "instance type"
  default = "t2.micro"
}