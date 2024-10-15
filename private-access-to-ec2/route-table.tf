# main route table
resource "aws_route_table" "ecom_route_table" {
  vpc_id = aws_vpc.ecom_vpc.id
}

#-------------------------#
# public route table
#-------------------------#

resource "aws_route_table" "ecom_rtb_public" {
  vpc_id = aws_vpc.ecom_vpc.id

  tags = {
    Name = "ecom-rtb-public"
  }

}

# public route 
resource "aws_route" "ecom_rtb_public_route" {
  route_table_id = aws_route_table.ecom_rtb_public.id

  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.ecom_igw.id

}

# Internet gateway
resource "aws_internet_gateway" "ecom_igw" {
  vpc_id = aws_vpc.ecom_vpc.id

  tags = {
    Name = "ecom-igw"
  }
}

# public1_eu_west_1a route association
resource "aws_route_table_association" "ecom_rtb_public1_eu_west_1a_association" {
  subnet_id      = aws_subnet.ecom_subnet_public1_eu_west_1a.id
  route_table_id = aws_route_table.ecom_rtb_public.id
}

# public2_eu_west_1b route association
resource "aws_route_table_association" "ecom_rtb_public2_eu_west_1b_association" {
  subnet_id      = aws_subnet.ecom_subnet_public2_eu_west_1b.id
  route_table_id = aws_route_table.ecom_rtb_public.id
}

#-------------------------#
# private1_eu_west_1a route table
#-------------------------#

resource "aws_route_table" "ecom_rtb_private1_eu_west_1a" {
  vpc_id = aws_vpc.ecom_vpc.id

  tags = {
    Name = "ecom-rtb-private1-eu-west-1a"
  }
}

# private1_eu_west_1a route
resource "aws_route_table_association" "ecom_rtb_private1_eu_west_1a_association" {
  subnet_id      = aws_subnet.ecom_subnet_private1_eu_west_1a.id
  route_table_id = aws_route_table.ecom_rtb_private1_eu_west_1a.id
}

#-------------------------#
# private2_eu_west_1b route table
#-------------------------#

resource "aws_route_table" "ecom_rtb_private2_eu_west_1b" {
  vpc_id = aws_vpc.ecom_vpc.id

  tags = {
    Name = "ecom-rtb-private2-eu-west-1b"
  }
}

# private2_eu_west_1b route
resource "aws_route_table_association" "ecom_rtb_private2_eu_west_1b_association" {
  subnet_id      = aws_subnet.ecom_subnet_private2_eu_west_1b.id
  route_table_id = aws_route_table.ecom_rtb_private2_eu_west_1b.id
}

