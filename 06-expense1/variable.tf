variable "aws_ami"{
  default = ""
}

variable "instance_type" {
  default = "t3.micro"
}
variable "instance_names" {
  type = list(string)
  default = [ "mysql", "backend", "frontenc" ]
}
variable "common_tags" {
  type = map
  default = {
    name = "mysql"
    project = "expense"
    environment = "dev"
    terraform = "true"
  }
}
variable "aws_sg" {
  default = "allow-ssh"
}
variable "from_port" {
  default = "22"
}
variable "to_port" {
  default = "22"
}
variable "cidr_blocks" {
  type = list(string)
  default = ["0.0.0.0/0"]
}
variable "zone_id" {
  default = "Z09912121MS725XSKH1TG"
}
variable "domain_name" {
  default = "devopstechi.online"
}