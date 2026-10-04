locals {
  ID = data.aws_caller_identity.current.account_id
  environment = var.environment  
  region = var.aws_region 
}