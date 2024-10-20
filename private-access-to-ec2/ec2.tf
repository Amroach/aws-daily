# Private EC2 instance
resource "aws_instance" "private_ec2" {
  ami           = "ami-054a53dca63de757b"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.ecom_subnet_private1_eu_west_1a.id

  tags = {
    Name = "private"
  }
}

# Public EC2 instance
resource "aws_instance" "public_ec2" {
  ami           = "ami-054a53dca63de757b"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.ecom_subnet_public1_eu_west_1a.id

  vpc_security_group_ids = [aws_security_group.ecom_lab_public.id]

  tags = {
    Name = "public"
  }
}