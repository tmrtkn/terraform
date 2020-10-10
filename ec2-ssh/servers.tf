resource "aws_instance" "test-ec2-instance" {
  ami             = var.ami_id
  instance_type   = "t3.micro"
  key_name        = var.ami_key_pair_name
  security_groups = [aws_security_group.ingress-all-test.id]

  tags = {
    Name = var.ami_name
  }

  subnet_id = aws_subnet.subnet-uno.id
}

resource "aws_key_pair" "example" {
  key_name   = "examplekey"
  public_key = file("~/.ssh/terraform.pub")
}
