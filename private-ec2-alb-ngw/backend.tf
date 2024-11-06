terraform {
  backend "s3" {
    bucket = "itestawstoday-ecom-terraform-state"
    key    = "private-ec2-alb-ngw/terraform"
    region = "eu-west-1"
  }
}