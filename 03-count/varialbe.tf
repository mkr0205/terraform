variable "ami_id" {
  default = "ami-09c813fb71547fc4f"
}
variable "instance_type" {
  default = "t3.micro"
}

variable "sgname" {
  default = "ssh-allow"
}

variable "tags" {
  default = {
    name = "expense"
  }
}
variable "description" {
  default = "ssh-allow"
}

variable "from_port" {
  default = "22"
}
variable "to_port" {
  default = "22"
}

variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}
variable "instance_names" {
  type    = list(string)
  default = ["mysql", "backed", "fronted"]
}
variable "common_tag" {
  type = map
  default = {
    project = "expense"
    enviroment = "dev"
    terraform = "true"
  }
}