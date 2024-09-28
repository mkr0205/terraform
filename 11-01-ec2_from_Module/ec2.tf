module "ec2" {
  source = "../11-modules"
  # These are variables expected by module, not arguments
  # you can also create variables or else you can directly use values here
  ami_id = var.imageid 
  instance_type = "t3.large"
  security_group_ids = [var.security_group_ids]
}