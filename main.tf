module "vpc" {
  source = "./modules/vpc"

  environment               = var.environment
  aws_region                = var.aws_region
  vpc_cidr_block            = var.vpc_cidr_block
  public_subnet_cidr_block  = var.public_subnet_cidr_block
  private_subnet_cidr_block = var.private_subnet_cidr_block
}

module "storage" {
  source = "./modules/storage"

  environment = var.environment
  aws_region  = var.aws_region
}

