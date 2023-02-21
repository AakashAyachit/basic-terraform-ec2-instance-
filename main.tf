terraform {
  required_providers{
    aws = {
        source = "hashicorp/aws"
        version = "~>4.16"
    }
  }

  required_version = ">=1.2.0"
}

provider "aws" {
    region ="ap-south-1"
    access_key = "y"
    secret_key = "x"
  
}

resource "aws_instance" "no" {
    ami="ami-0e742cca61fb65051"
    instance_type = "t2.micro"

    tags = {// for giving visible name to the instance
        Name = var.instance_name
    }
  
}