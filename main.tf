terraform {
  backend "s3" {
    bucket = "terraform948894"
    key = "key/terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAQBRBI7TWFSWITZMP"
    secret_key = "b5zICIuP7tDr/ijlFxSgfViZKZM8pZfpg4S1siB8"
  
}

resource "aws_instance" "ec2_example" {
    ami = "ami-0f1dcc636b69a6438"
    instance_type = "t2.micro"

    tags = {
        name = "terraform ec2"
    }
  
}