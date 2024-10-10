# main route table
resource "aws_route_table" "ecom_route_table" {
  vpc_id = aws_vpc.ecom_vpc.id
}

resource "aws_route_table" "ecom_rtb_public" {
  vpc_id = aws_vpc.ecom_vpc.id

  tags = {
    Name = "ecom-rtb-public"
  }

}

resource "aws_route" "ecom_rtb_public_route" {
  route_table_id = aws_route_table.ecom_rtb_public.id

  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.ecom_igw.id

}

resource "aws_internet_gateway" "ecom_igw" {
  vpc_id = aws_vpc.ecom_vpc.id

  tags = {
    Name = "ecom-igw"
  }

}