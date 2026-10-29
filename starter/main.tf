terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0fc5120b2d80d4749" # Ubuntu 20.04 LTS // us-east-1
  instance_type = "t3.micro"
  subnet_id = "subnet-0e269f871dd096580"
}