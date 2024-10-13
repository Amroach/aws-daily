# public1 eu_west_1a subnet
resource "aws_subnet" "ecom_subnet_public1_eu_west_1a" {
  vpc_id = aws_vpc.ecom_vpc.id

  cidr_block = "10.0.0.0/20"

  tags = {
    Name = "ecom-subnet-public1-eu-west-1a"
  }
}

# public2 eu_west_1a subnet
resource "aws_subnet" "ecom_subnet_public2_eu_west_1b" {
  vpc_id     = aws_vpc.ecom_vpc.id
  cidr_block = "10.0.16.0/20"

  tags = {
    Name = "ecom-subnet-public2-eu-west-1b"
  }
}

resource "aws_subnet" "ecom_subnet_private1_eu_west_1a" {
  vpc_id     = aws_vpc.ecom_vpc.id
  cidr_block = "10.0.128.0/20"

  tags = {
    Name = "ecom-subnet-private1-eu-west-1a"
  }
}

resource "aws_subnet" "ecom_subnet_private2_eu_west_1b" {
  vpc_id     = aws_vpc.ecom_vpc.id
  cidr_block = "10.0.144.0/20"

  tags = {
    Name = "ecom-subnet-private2-eu-west-1b"
  }
}

