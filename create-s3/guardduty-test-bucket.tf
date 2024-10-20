# guardduty_test_bucket s3 bucket
resource "aws_s3_bucket" "guardduty_test_bucket" {
  bucket = "guardduty-test-bucket-1234567890"

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name = "Creating test bucket for s3"
  }

}

resource "aws_s3_bucket_public_access_block" "block_public_access" {
  bucket = aws_s3_bucket.guardduty_test_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}