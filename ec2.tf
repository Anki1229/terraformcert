provider "aws" {
  region = "ap-south-1"
  }
resource "aws_instance" "web" {
  ami           = "ami-0eeb03e72075b9bcc"
  instance_type = "t2.micro"

  tags = {
    Name = "JTDEMOhook2"
  }
}

