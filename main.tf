
# Call the VPC module
# This deploys ALL networking resources

module "vpc" {

  # Path to our reusable VPC module folder
  source = "./modules/vpc"


  # Pass project name into module for tagging
  project_name = var.project_name

  # Pass environment (dev) 
  environment  = var.environment

  # AWS region to deploy resources
  region       = var.region

  az-1a = "af-south-1a"
  az-1b = "af-south-1b"

  # VPC CIDR block
  main_vpc = "10.0.0.0/16"

  # Public subnet CIDRs
  public_subnet_a_cidr = var.public_subnet_a_cidr
  public_subnet_b_cidr = var.public_subnet_b_cidr

  # Private app subnet CIDRs
  private_app_subnet_a_cidr = var.private_app_subnet_a_cidr
  private_app_subnet_b_cidr = var.private_app_subnet_b_cidr

  # Private DB subnet CIDRs
  private_db_subnet_a_cidr = var.private_db_subnet_a_cidr
  private_db_subnet_b_cidr = var.private_db_subnet_b_cidr
  
}


