# main route table
resource "aws_route_table" "ecom_route_table" {
  vpc_id = aws_vpc.ecom_vpc.id
}

# public route table
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

# private route table
resource "aws_route_table" "ecom_rtb_private1_eu_west_1a" {
  vpc_id = aws_vpc.ecom_vpc.id

  tags = {
    Name = "ecom-rtb-private1-eu-west-1a"
  }
}



