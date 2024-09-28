terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.66.0"
    }
  }

#  backend "s3" {
#    bucket = "devopstchi"
#     key = "remotedemo"
#    region = "us-east-1"
#   dynamodb_table = "remotestate1"
# }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
