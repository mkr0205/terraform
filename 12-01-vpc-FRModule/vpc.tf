module "vpc" {
  source = "../12-vpc-module"
  vpc_cidr = var.vpc_cidr
  project_name = var.project_name
  enviroment = var.enviroment
  common_tags = var.common_tags
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  databse_subnet_cidrs = var.database_subnet_cidrs 
  is_peeting_required  = true
}