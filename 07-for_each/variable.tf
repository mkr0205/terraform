variable "instance_type" {
  default = "te.micro"
}
variable "instance" {
  type = map
  default = {
    mysql = "t3.small"
    backend = "t3.micro"
    frontend = "t3.micro"
  }
}
variable "sgname" {
  default = "allow-ssh"
  description = "Allow port number 22 for SSH access"
}

variable "sg_description" {
  default = "Allow port number 22 for SSH access"
}
variable "zone_id" {
  default = "Z02402102QAE98EGAL2LC"
}
variable "domain_name" {
  default = "devopstechi.online"
}
variable "ingress_ports" {
   type = list(number)
   default = [ 22, 80, 443, 8080, 3306 ]
}
variable "cidr_blocks" {
  type = list(string)
  default = ["0.0.0.0/0"]
}