resource "aws_instance" "tfVM" {
  count = 3
  ami = var.ami_id
  instance_type = var.instance_type
  tags = var.tags
}

resource "aws_security_group" "tfSg" {
    name = var.sg
    description = var.description

    egress {
        from_port        = var.from_port
        to_port          = var.to_port
        protocol         = "-1"
        cidr_blocks      = var.cidr_blocks
        ipv6_cidr_blocks = ["::/0"]
    }
    ingress {
        from_port        = var.from_port
        to_port          = var.to_port
        protocol         = "-1"
        cidr_blocks      = var.cidr_blocks
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = var.tags 
}