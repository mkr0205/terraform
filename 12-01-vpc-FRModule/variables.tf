variable "project_name" {
  default = "expense"
}
variable "enviroment" {
  default = "Dev"
}
variable "common_tags" {
  default = {
    Project = "expense"
    Environment = "Dev"
    Terraform = "True"
  }
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "public_subnet_cidrs" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}
variable "private_subnet_cidrs" {
  default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "database_subnet_cidrs" {
  default = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "is_peeting_required" {
  default = true  
}
