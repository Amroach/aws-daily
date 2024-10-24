resource "aws_guardduty_malware_protection_plan" "s3_malware_protection" {
  role = aws_iam_role.guardduty_s3_malware_protection.arn

 protected_resource {
    s3_bucket {
      bucket_name     = aws_s3_bucket.guardduty_test_bucket.id
    }
  }

}