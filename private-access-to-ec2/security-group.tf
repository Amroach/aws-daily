resource "aws_security_group" "ecom_lab_public" {
  name        = "ecom-lab-public"
  description = "ecom-lab-public"
  vpc_id      = aws_vpc.ecom_vpc.id

}

resource "aws_security_group_rule" "ecom_lab_public_egress" {
  type              = "egress"
  security_group_id = aws_security_group.ecom_lab_public.id
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  to_port           = 0
  protocol          = "-1"  # Allows all traffic
}

