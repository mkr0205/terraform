variable "ami-id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "devops-practice image"  
}

variable "instance_type" {
    type = string
    default = "t3.micro"
    description = "instace size"
}

variable "tags" {
    type = map #optional
    default = {
        name = "backend"
        Project = "expense"
        component = "mysql"
        environemt = "dev"
        Terraform = "True"
    }
}

variable "sg_name" {
    default = "allow-ssh"
}

variable "description" {
    default = "Allow prot number 22 for SSH access"
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
    default = [ "0.0.0.0/0" ]
}
variable "root_password" {
  default = "DevOps321"
}