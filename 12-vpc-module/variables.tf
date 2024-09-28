variable "project_name" {
  default = {}
}
variable "enviroment" {
  default = "Dev"
}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "aws_dns_hostname" {
  default = "true"
}
variable "common_tags" {
  default = {}
}
variable "vpc_tags" {
  default = {}
}
variable "igw_tags" {
  default = {}
}

variable "public_subnet" {
  default = {}
}
variable "public_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.public_subnet_cidrs) == 2
    error_message = "Please provide 2 valid public subnet CIDR"
  }
}

variable "private_subnet" {
  default = {}
}
variable "private_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.private_subnet_cidrs) == 2
    error_message = "Please provide 2 valid private subnet CIDR"
  }
}

variable "database_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.database_subnet_cidrs) == 2
    error_message = "Please provide 2 valid database subnet CIDR"
  }
}

variable "database_subnet_tags" {
  default = {}
}

variable "db_subnet_group_tags" {
  default = {}
}

variable "aws_nat_gateway" {
  default = {}
}