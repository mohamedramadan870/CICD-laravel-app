# In this project we can't use the free tier t2.micro since we will be running many service on this machine so we will use t2.medium 
resource "aws_instance" "ubuntu-instance" {
  ami             = var.ami
  instance_type   = "t2.micro"
  key_name        = "mykey"
  security_groups = ["${aws_security_group.UbuntuSG.name}"]

  tags = {
    Name = "Ubuntu-EC2"
  }

}


