terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.66.1"
    }
  }
}

#provider "aws" {
  # Configuration options
#}

provider "aws" {
  region = "us-east-1"
}

/*provider "aws" {
  region = "eu-central-1"
}*/



resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-manish-batch4"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


resource "aws_instance" "batch3_instance" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
 }
}


