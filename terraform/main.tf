
 provider "aws" {
 region = "[aws region]"  
}

resource "aws_instance" "my_instance" {
  ami           = "ami-xxxxxxxxxxxxxxx"  
  instance_type = "t2.micro"

  tags = {
    Name = "AWS instance"
  }
}
