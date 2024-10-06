terraform {
  backend "s3" {
    bucket = "itestawstoday-ecom-terraform-state"
    key    = "terraform"
    region = "eu-west-1"
  }
}
