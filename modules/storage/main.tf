resource "aws_s3_bucket" "non-prod-s3-bucket" {
  bucket = "non-prod-s3-bucket-${local.environment}-${local.ID}"
  
}