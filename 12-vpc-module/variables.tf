variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "enable_dns_hostnames" {
  default = "true"
}
variable "project_name" {
  type = string
}

variable "enviroment" {
  type = string
}
# Optional
variable "common_tags" {
  default = { }
}
# Optional
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
    error_message = "Please provide 2 valid public subnet cidrs"
  }
}

variable "private_subnet" {
  default = {}
}

variable "private_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.private_subnet_cidrs) == 2
    error_message = "Please provide 2 valid private subnet cidrs"
  }
}
variable "databse_subnet" {
  default = {}
}

variable "databse_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.databse_subnet_cidrs) == 2
    error_message = "Please provide 2 valid databse subnet cidrs"
  }
}

variable "db_subnet_group_tags" {
  default = {}
}

variable "nat_gateway_tags" {
  default = {}
}

variable "public_route_table_tags" {
  default = {}
}

variable "private_route_table_tags" {
  default = {}
}

variable "database_route_table_tags" {
  default = {}
}

variable "is_peeting_required" {
  type = bool
  default = false
}
variable "vpc_peering_tags" {
  default = {}
}