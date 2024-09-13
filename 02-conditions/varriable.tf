variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "tags" {
  type = map
  default = {
    name = "backend"
    project = "expense"
    enviroment = "dev"
    terraform = "True"
  }
}
variable "ssh-sg" {
  default = "ssh-allow"
}

variable "description" {
  default = "Allow SSH"
}
variable "from_port" {
  default = "22"
}

variable "to_port" {
  default = "22"
}
variable "protocol" {
  default = "tcp"
}

variable "cidr_blocks" {
  type = list(string)
  default = ["0.0.0.0/0"]
}

variable "enviroment" {
  default = "dev"
}