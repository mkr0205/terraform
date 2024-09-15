resource "aws_instance" "tfvm" {
  count = length(var.instance_names)
  ami = data.aws_ami.osimage.id
  instance_type = var.instance_names[count.index] == "mysql" ? "t3.small" : "t2.micro"
  tags = merge(
    var.common_tags,
    {
      name = var.instance_names[count.index]
    }
  )  
}

resource "aws_security_group" "tfSg" {
  name        = var.aws_sg
  description = "Allow TLS inbound traffic and all outbound traffic"
 
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }
}