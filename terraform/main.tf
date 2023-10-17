
variable "access_key" {}
variable "secret_key" {}

provider "aws" {
  region = "us-west-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

terraform {
  required_version = ">= 0.12.26"
}

resource "aws_instance" "test-instance" {
  ami = "ami-0c87a756f3fd22df2"
  instance_type = "t3.micro"
}
