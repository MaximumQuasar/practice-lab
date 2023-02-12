resource "aws_security_group" "poc-vpc-primary-sg" {
  name        = "allow_all_connection"
  description = "Allow all inbound traffic"
  vpc_id      = data.aws_vpc.poc-vpc-primary.id

  ingress {
    description      = "Allow all inbound traffic"
    from_port        = "0"
    to_port          = "0"
    protocol         = "-1"
    cidr_blocks      = ["30.0.0.0/8","33.0.0.0/8"]
  }
}

resource "aws_security_group" "poc-vpc-secondary-sg" {
  name        = "allow_all_connection"
  description = "Allow All inbound traffic"
  vpc_id      = data.aws_vpc.poc-vpc-secondary.id

  ingress {
    description      = "Allow all inbound traffic"
    from_port        = "0"
    to_port          = "0"
    protocol         = "-1"
    cidr_blocks      = ["30.0.0.0/8","33.0.0.0/8"]
  }

  provider = aws.ohio
}