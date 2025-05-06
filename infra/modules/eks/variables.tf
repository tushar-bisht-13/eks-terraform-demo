variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
  
}

variable "vpc_id" {
  description = "The ID of the VPC where the EKS cluster will be deployed."
  type        = string
  
}

variable "subnet_ids" {
  description = "The list of subnet IDs to use for the EKS cluster."
  type        = list(string)
  
}