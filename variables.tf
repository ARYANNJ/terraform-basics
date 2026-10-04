variable "aws_region" {
  type        = string
  description = "AWS deployment region"
  default     = "ap-south-1" # Optional fallback if not specified in tfvars
}

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16" # Optional fallback if not specified in tfvars   
}

variable "environment" {
  type        = string
  description = "Deployment environment (e.g., non-prod, prod)"
  default     = "non-prod" # Optional fallback if not specified in tfvars
}

variable "private_subnet_cidr_block" {
  type        = string
  description = "CIDR block for the subnet"
  default     = "10.0.1.0/24" # Optional fallback if not specified in tfvars
}

variable "public_subnet_cidr_block" {
  type        = string
  description = "CIDR block for the public subnet"
  default     = "10.0.2.0/24" # Optional fallback if not specified in tfvars
}

variable "availability_zone" {
  type        = string
  description = "Availability zone for the subnet"
  default     = "" # Optional fallback if not specified in tfvars
}

variable "instance_ami" {
  type        = string
  description = "AMI ID for the EC2 instance"
  default     = "ami-08e3b3155fc937a94"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.micro" # Optional fallback if not specified in tfvars
}

variable "bucket_map" {
  type = map(string)
  default = {
    bucket1 = "aryanjadhav-bucket-1"
    bucket2 = "aryanjadhav-bucket-2"
  }
}