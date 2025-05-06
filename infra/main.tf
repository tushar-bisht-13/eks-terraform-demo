provider "aws" {
  region = var.region
}

module "eks" {
  source       = "./modules/eks"
  cluster_name = var.cluster_name
  vpc_id       = var.vpc_id
  subnet_ids   = var.subnet_ids
}

module "ecr" {
  source         = "./modules/ecr"
  repository_name = var.repository_name
}

# module "ebs" {
#   source            = "./modules/ebs"
#   availability_zone = var.availability_zone
#   volume_size       = var.volume_size
  
# }
