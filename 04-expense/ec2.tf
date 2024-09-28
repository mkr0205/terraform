resource "aws_instance" "tfvm" {
  count = length(var.instance_name)
  ami = var.ami-id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.tfsg.id]
  tags = merge(
        var.common_tag,
        {
            name = var.instance_name[count.index]
         }
  ) 
}


resource "aws_security_group" "tfsg" {
  name = var.sgname
  description = var.sg_description

  egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.ingress_cidr
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.ingress_cidr
    ipv6_cidr_blocks = ["::/0"]
  }
}