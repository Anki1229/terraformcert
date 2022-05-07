provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "dev" {
  ami           = var.image[0]
  instance_type = var.instance_type["dev"]
  count         = var.input == "dev" ? 1 : 0

  tags = {
    Name = "Dev-Depart"
  }
}

resource "aws_instance" "test" {
  ami           = var.image[1]
  instance_type = var.instance_type["test"]
  count         = var.input == "test" ? 2 : 0

  tags = {
    Name = "Test-Depart"
  }
}

resource "aws_instance" "prod" {
  ami           = var.image[2]
  instance_type = var.instance_type["prod"]
  count         = var.input == "prod" ? 4 : 0

  tags = {
    Name = "Prod-Depart"
  }
}