variable "ami-id" {
  default = "ami-09c813fb71547fc4f"
}

variable "instance_name" {
  type = list(string)
  default = ["mysql", "backend", "frontend"]
}

variable "instance_type" {
  default = "t3.micro"
}

variable "common_tag" {
  type = map
  default = {
    project = "expense"
    environment = "dev"
    terraform = "True"
  }
  
}
variable "sgname" {
  default = "allow-ssh"
}

variable "protocol" {
  default = "tcp"
}

variable "ingress_cidr"{
  type = list(string)
  default = ["0.0.0.0/0"]
}
variable "description" {
  default = "Allow SSH communication"
}
variable "from_port" {
  default = "22"
}
variable "to_port" {
  default = "22"
}

variable "zone_id" {
  default = "Z09912121MS725XSKH1TG"
}
variable "domain_name" {
  default = "daws81s.online"
}
