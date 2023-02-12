module "primary-region" {
  source = "./network"

  count = var.primary-region.vpc-id == "" ? 1: 0
  vpc-cidr = var.primary-region.vpc-cidr
  subnet-cidr = var.primary-region.subnet-cidr
  az = var.primary-region.subnet-az   
}

module "secondary-region" {
  source = "./network"

  count = var.secondary-region.vpc-id == "" ? 1: 0
  vpc-cidr = var.secondary-region.vpc-cidr
  subnet-cidr = var.secondary-region.subnet-cidr
  az = var.secondary-region.subnet-az   

  provider = {
    aws = aws.east2
   }
}