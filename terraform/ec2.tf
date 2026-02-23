provider "aws" {

    region = "ap-southeast-1"
  
}

resource "aws_instance" "ec2-docker" {
  
  ami = "ami-08d59269edddde222"
  instance_type = "t3.micro"
  key_name = "rr-rushi-singapore"
  root_block_device {
    volume_size = 20
  }
  vpc_security_group_ids = ["sg-0787e67583992f1dc"]
  tags = {
    Name = "terraform-prac"
  }
}