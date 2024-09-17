resource "aws_instance" "tfvm" {
  count = length(var.instance_name)
  ami = data.aws_ami.osimage.id
  instance_type = var.instance == "mysql" ? "t3.small" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.tfsg.id]
  tags = merge(
        var.comman_tags,
        {
            Name = var.instance_name[count.index]
        }
  )
}
resource "aws_security_group" "tfsg" {
    name        = "dynamic_demo" #allow_ssh is already there in my account
    description = "Allow port number 22 for SSH access"

    # usually we allow everything in egress
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    # terraform will give us a variable with block name
    dynamic "ingress" {
        for_each = var.ingress_rules
        content {
            from_port        = ingress.value["from_port"]
            to_port          = ingress.value["to_port"]
            protocol         = ingress.value["protocol"]
            cidr_blocks      = ingress.value.cidr_blocks
        }
    }

    tags = {
        Name = "allow_sshh"
    }
}