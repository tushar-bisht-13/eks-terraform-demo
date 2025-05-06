output "ecr_repository_urls" {
  description = "Map of repository names to their ECR URLs"
  value = {
    for key, mod in module.ecr :
    key => mod.repository_url
  }
}

output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = module.eks.cluster_endpoint
}

output "cluster_name" {
  description = "EKS cluster name"
  value       = module.eks.cluster_name
}