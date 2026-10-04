output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.non-prod-vpc.id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.non-prod-vpc.cidr_block
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = aws_vpc.non-prod-vpc.arn
}

output "vpc_Name" {
  description = "The name of the VPC"
  value       = aws_vpc.non-prod-vpc.tags["Name"]
}

output "private_subnet_id" {
  description = "The ID of the subnet"
  value       = aws_subnet.non-prod-private-subnet.id
}

output "subnet_cidr_block" {
  description = "The CIDR block of the subnet"
  value       = aws_subnet.non-prod-private-subnet.cidr_block
}

output "subnet_arn" {
  description = "The ARN of the subnet"
  value       = aws_subnet.non-prod-private-subnet.arn
}

output "private_subnet_Name" {
  description = "The name of the subnet"
  value       = aws_subnet.non-prod-private-subnet.tags["Name"]
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = aws_subnet.non-prod-public-subnet.id
}

output "private_route_table_id" {
  description = "The ID of the route table"
  value       = aws_route_table.non-prod-private-rt.id
}

output "private_route_table_arn" {
  description = "The ARN of the route table"
  value       = aws_route_table.non-prod-private-rt.arn
}

output "private_route_table_Name" {
  description = "The name of the route table"
  value       = aws_route_table.non-prod-private-rt.tags["Name"]
}

output "public_route_table_id" {
  description = "The ID of the route table"
  value       = aws_route_table.non-prod-public-rt.id
}

output "public_route_table_arn" {
  description = "The ARN of the route table"
  value       = aws_route_table.non-prod-public-rt.arn
}

output "public_route_table_Name" {
  description = "The name of the route table"
  value       = aws_route_table.non-prod-public-rt.tags["Name"]
}

output "current_account_id" {
  description = "The AWS account ID of the current user"
  value       = data.aws_caller_identity.current.account_id
  sensitive   = true
}

output "s3_bucket_names" {
  description = "The names of the S3 buckets created"
  value       = [for bucket in aws_s3_bucket.non-prod-s3-bucket : bucket.bucket]
}