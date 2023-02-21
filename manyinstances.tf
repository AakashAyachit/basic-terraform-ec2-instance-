terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>4.16"
    }
  }
   required_version = ">=1.2.0"
}

provider "aws" {
    region = "ap-south-1"
    access_key = "a"
    secret_key = "b"
  
}

resource "aws_instance" "metaargs" {
    ami = "ami-0e742cca61fb65051"
    instance_type = "t2.micro"
    count = var.instance_count
    #count = 3

    tags={
        Name = "instance ${count.index}"
    }
  
}