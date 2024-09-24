variable "project_name" {
  default = "expense"
}
variable "enviroment" {
  default = "Dev"
}

variable "common_tags" {
  default = {
    project = "expense"
    terraform = "true"
    enviroment = "Dev"
  }
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