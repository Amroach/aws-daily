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
  protocol          = "-1" 
}

resource "aws_security_group_rule" "ssh_from_ec2_instance_connect" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["18.202.216.48/29"]
  security_group_id = aws_security_group.ecom_lab_public.id
}

resource "aws_security_group_rule" "allow_http" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.ecom_lab_public.id
}

resource "aws_security_group_rule" "allow_https" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.ecom_lab_public.id
}
