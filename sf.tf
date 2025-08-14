resource "aws_vpc" "sf-vpc" {
cidr_block    = "0.0.0.0/16"
tags = {
name = "sf-vpc-04"
}
}
