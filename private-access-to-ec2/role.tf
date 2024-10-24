resource "aws_iam_role" "guardduty_s3_malware_protection" {
  name        = "GuardDutyS3MalwareProtection"
  description = "This is role used for guardDuty to be able to do malware protection on s3"

  # Using jsonencode to convert the policy to valid JSON syntax
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "malware-protection-plan.guardduty.amazonaws.com"
        }
      }
    ]
  })
}
