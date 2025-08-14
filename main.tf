provider "aws" {
region = var.myregion
shared_credentials_files = [var.cred_file]
}
data "aws_ami" "myami"{

owners = ["amazon"]
most_recent = true

filter{
name = "name"
values = [var.ami_name]
}
}

resource "aws_instance" "myec2" {
ami = data.aws_ami.myami.id
instance_type = var.instance_type
count =5
tags = {
name = var.env
}
}
