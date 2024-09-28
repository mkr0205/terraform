locals {
  resource_name = "${var.project_name}-${var.enviroment}"
  az_names = slice(data.aws_availability_zones.available.names, 0, 2)
  }