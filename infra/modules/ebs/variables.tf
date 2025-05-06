variable "availability_zone" {
  description = "The availability zone in which to create the EBS volume."
  type        = string
  
}

variable "volume_size" {
  description = "The size of the EBS volume in GB."
  type        = number
  default     = 5
  
}