resource "aws_vpc" "vpc" {
    cidr_block = var.vpc-cidr
}

resource "aws_internet_gateway" "igw" {
    depends_on = [
      aws_vpc.vpc
    ]
    vpc_id = aws_vpc.vpc.id
}