resource "aws_subnet" "subnet" {
  depends_on = [
    aws_vpc.vpc,
    aws_internet_gateway.igw
  ]

  availability_zone = var.az
  cidr_block = var.subnet-cidr
}

resource "aws_route_table" "rt" {

  depends_on = [
    aws_subnet.subnet
  ]

  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "::/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table_association" "rta" {
  depends_on = [
    aws_route_table.rt
  ]
  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.rt.id
}