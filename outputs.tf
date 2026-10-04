output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = module.vpc.vpc_arn
}

output "vpc_Name" {
  description = "The name of the VPC"
  value       = module.vpc.vpc_Name
}

output "private_subnet_id" {
  description = "The ID of the subnet"
  value       = module.vpc.private_subnet_id
}

output "subnet_cidr_block" {
  description = "The CIDR block of the subnet"
  value       = module.vpc.subnet_cidr_block
}

output "subnet_arn" {
  description = "The ARN of the subnet"
  value       = module.vpc.subnet_arn
}

output "private_subnet_Name" {
  description = "The name of the subnet"
  value       = module.vpc.private_subnet_Name
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = module.vpc.public_subnet_id
}

output "private_route_table_id" {
  description = "The ID of the route table"
  value       = module.vpc.private_route_table_id
}

output "private_route_table_arn" {
  description = "The ARN of the route table"
  value       = module.vpc.private_route_table_arn
}

output "private_route_table_Name" {
  description = "The name of the route table"
  value       = module.vpc.private_route_table_Name
}

output "public_route_table_id" {
  description = "The ID of the route table"
  value       = module.vpc.public_route_table_id
}

output "public_route_table_arn" {
  description = "The ARN of the route table"
  value       = module.vpc.public_route_table_arn
}

output "public_route_table_Name" {
  description = "The name of the route table"
  value       = module.vpc.public_route_table_Name
}
output "current_account_id" {
  description = "The AWS account ID of the current user"
  value       = data.aws_caller_identity.current.account_id
  sensitive   = true
}

output "non-prod-sg_id" {
  description = "The ID of the security group"
  value       = module.vpc.non-prod-sg_id
}

output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = module.storage.s3_bucket_name
}