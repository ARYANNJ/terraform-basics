variable "environment" {
  type        = string
  description = "Deployment environment (e.g., non-prod, prod)"
  default     = "non-prod" # Optional fallback if not specified in tfvars
}

variable "aws_region" {
  type        = string
  description = "AWS deployment region"
  default     = "ap-south-1" # Optional fallback if not specified in tfvars
}