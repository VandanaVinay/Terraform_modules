provider "aws" {
    region = "ap-south-1"
}

module "ec2-instance" {
    source = "./ec2-instance"
    ami_id = "ami-0c1a7f89451184c8b"   #ubuntu ami-id in Mumbai region
    instance_type = "t2.micro"
    vpc_id = "vpc-799e4c12"   #vpc id of my account's default vpc
    port = "22"
    cidr_block = "0.0.0.0/0"
}


