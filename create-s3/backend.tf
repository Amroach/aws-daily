terraform {
  backend "s3" {
    bucket = "itestawstoday-ecom-terraform-state"
    key    = "create-s3/terraform"
    region = "eu-west-1"
  }
}