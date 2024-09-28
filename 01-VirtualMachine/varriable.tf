variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
  description = "This is the AMI ID of devops-practice with is RHEL9"
}
variable "instance_type" {
  type = string
  default = "t3.micro" 
}
variable "instance_name" {
  type = list(string)
  default = [ "mysql", "backend", "frontend" ]
}
variable "common_tags" {
  type = map
  default = {
    project = "expense"
    environment = "Dev"
    Terraform = "True"
  }
}
variable "sg_name" {
  default = "allow-ssh"
}
variable "sg_description" {
  default = "Allow SSH access"
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