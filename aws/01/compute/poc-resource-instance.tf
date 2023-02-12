resource "aws_instance" "poc-instance-primary" {
  depends_on = [
    aws_security_group.poc-vpc-primary-sg,
    data.aws_subnet.poc-vpc-primary-subnet,
    aws_key_pair.poc-kp-primary
  ]
  ami           = "ami-03126a8b5c027cb83"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.poc-vpc-primary-sg.id]
  subnet_id = data.aws_subnet.poc-vpc-primary-subnet.id
  key_name = aws_key_pair.poc-kp-primary.key_name
  user_data = <<-EOF
#!/bin/bash
echo "ec2-user:mypassword" | sudo chpasswd

sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo service ssh restart
EOF
}

resource "aws_instance" "poc-instance-secondary" {
  depends_on = [
    aws_security_group.poc-vpc-secondary-sg,
    data.aws_subnet.poc-vpc-secondary-subnet,
    aws_key_pair.poc-kp-secondary
  ]
  ami           = "ami-00339b40a0c950550"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.poc-vpc-secondary-sg.id]
  subnet_id = data.aws_subnet.poc-vpc-secondary-subnet.id
  key_name = aws_key_pair.poc-kp-secondary.key_name
  user_data = <<-EOF
#!/bin/bash
echo "ec2-user:mypassword" | sudo chpasswd

sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo service ssh restart
EOF
  provider = aws.ohio
}