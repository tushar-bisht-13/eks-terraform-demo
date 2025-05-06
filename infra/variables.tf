#EKS module variables

variable "region" {
  description = "The AWS region to deploy the resources in."
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
  default     = "demo-eks-cluster"
}

variable "vpc_id" {
  description = "The ID of the VPC where the EKS cluster will be deployed."
  type        = string
  default     = "vpc-06d7c39595938bc28"
}

variable "subnet_ids" {
  description = "The list of subnet IDs to use for the EKS cluster."
  type        = list(string)
  default     = [ "subnet-045184b075f72d78f", "subnet-09bf9f7b21f531138" ]
}

#ECR module variables

variable "repository_name" {
  description = "The name of the ECR repository."
  type        = string
  default     = "my-app-repo"
  
}

#EBS module variables

# variable "availability_zone" {
#   description = "The availability zone in which to create the EBS volume."
#   type        = string
#   default     = "us-east-1a"
  
# }

# variable "volume_size" {
#   description = "The size of the EBS volume in GB."
#   type        = number
#   default     = 5
  
# }