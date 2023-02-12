data "aws_vpc" "poc-vpc-primary" {
  id = var.poc-vpc-primary
}

data "aws_subnet" "poc-vpc-primary-subnet" {
  depends_on = [
    data.aws_vpc.poc-vpc-primary
  ]
  availability_zone = var.poc-vpc-primary-subnet-az
  vpc_id = data.aws_vpc.poc-vpc-primary.id
}

data "aws_vpc" "poc-vpc-secondary" {
  id = var.poc-vpc-secondary
  provider = aws.ohio
}

data "aws_subnet" "poc-vpc-secondary-subnet" {
  depends_on = [
    data.aws_vpc.poc-vpc-secondary
  ]
  availability_zone = var.poc-vpc-secondary-subnet-az
  vpc_id = data.aws_vpc.poc-vpc-secondary.id
  provider = aws.ohio
}