resource "aws_security_group" "tf-sg" {
  name = "allow-ssh"
  description = "Allow prot number 22 for SSH access"

ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] #Allow all
    ipv6_cidr_blocks = ["::/0"]
  }

egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
tags = {
  name = "allow_ssh"
  }
}

resource "aws_instance" "tf-vm1" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.tf-sg.id]
  tags = {
  name = "TF-VM"
  }
}
