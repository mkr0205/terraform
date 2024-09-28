resource "aws_instance" "tfvm" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.tf-sg.id]
      tags = var.common_tags
  }

resource "aws_security_group" "tf-sg" {
  name = var.sg_name
  description = var.sg_description
  tags = merge(
    var.common_tags,
    {
      name = var.sg_name
    }
  )


  #Block
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

