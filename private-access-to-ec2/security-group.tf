resource "aws_security_group" "ecom_lab_public" {
  name        = "ecom-lab-public"
  description = "ecom-lab-public"
  vpc_id      = aws_vpc.ecom_vpc.id

  ingress = []
  egress  = []
}