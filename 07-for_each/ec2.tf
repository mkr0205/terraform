resource "aws_instance" "tfvm" {
  for_each = var.instance
  ami = data.aws_ami.osimage.id
  instance_type = each.value
  vpc_security_group_ids = [aws_security_group.tfsg.id]
  tags = {
    Name = each.key
  }
}

resource "aws_security_group" "tfsg" {
  name = var.sgname
  description = var.sg_description

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}