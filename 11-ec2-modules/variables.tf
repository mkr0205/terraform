variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
}

# Optional, defaril value is t3.micro. User can override
variable "instance_type" {
  default = "t3.micro"
  type = string
  validation {
    condition = contains(["t3.micro", "t3.medium", "t3.small"], var.instance_type)
    error_message = "instance_type only can be of t3.micro, t2.medium, t3.small"
  }
}
# Mandatory, user should supply 
variable "security_group_ids" {
  type = list(string)
}