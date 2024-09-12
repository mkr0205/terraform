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

