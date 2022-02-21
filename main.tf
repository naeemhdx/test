provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "my-vm" {
  ami           = "ami-002068ed284fb165b"
  instance_type = "t2.micro"

  tags = {
    Name = "TerraFVM"
    Server = "Dev"
    Date = timestamp()
  }
}