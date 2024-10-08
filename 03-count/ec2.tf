resource "aws_instance" "tfVM" {
  count         = length(var.instance_names)
  ami           = var.ami_id
  instance_type = var.instance_type
#   tags = {
#     name = var.instance_names[count.index]
#   }
    tags = merge(
        var.common_tag,
        {
            name = var.instance_names[count.index]
        }
    )
}

resource "aws_security_group" "tfSg" {
  name        = var.sgname
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

  tags = merge(
    var.common_tag,
    {
        name = "allow-ssh"
    }
  )
}