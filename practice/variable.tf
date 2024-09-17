variable "instance" {
  type = map
  default = {
    mysql = "t3.small"
    backend = "t3.micro"
    frontend = "t3.micro"
    description = "Instance name and configiration type"
  }
}
variable "aws_sgname" {
  default = "allow-ssh"
  description = "Security group name"
}
variable "instance_name" {
  type = list(string)
  default = [ "mysql", "backend", "frontend" ]
  description = "Instance name"
}
variable "ingress_rules" {
    default = [
        {
            from_port = 22
            to_port = 22
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
            description = "opening 22"
        },
        {
            from_port = 80
            to_port = 80
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
            description = "opening 80"
        },
        {
            from_port = 8080
            to_port = 8080
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
            description = "opening 8080"
        }
    ]
}
variable "comman_tags" {
  type = map
  default = {
    project = "Expense"
    enviroment = "Dev"
    terraform = "True"
  }
}