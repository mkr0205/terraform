resource "aws_instance" "tfvm" {
  ami = var.ami_id
  instance_type = var.enviroment == "pod" ? "t3.small" : "t3.micro"
  tags = var.tags
}

resource "aws_security_group" "tfRg" {
  name = var.ssh-sg
  description = var.description

  ingress {
      from_port        = var.from_port
      to_port          = var.to_port
      protocol         = var.protocol
      cidr_blocks      = var.cidr_blocks #Allow all
      ipv6_cidr_blocks = ["::/0"]
  }
  # Block
  egress {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = var.cidr_blocks 
      ipv6_cidr_blocks = ["::/0"]
  }
}



