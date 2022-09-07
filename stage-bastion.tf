resource "aws_instance" "bastion1" {
  ami                    = "ami-0b89f7b3f054b957e"
  instance_type = "t2.micro"
#   vpc_id                 = "aws_vpc.vpc.id"
  subnet_id              = aws_subnet.public[0].id
  vpc_security_group_ids = [aws_security_group.bastion88.id]
  tags = {
    name      = "stage-bastion"
    terraform = "true"
  }
}

resource "aws_instance" "apache88" {
  ami                    = "ami-0b89f7b3f054b957e"
  instance_type = "t2.micro"
#   vpc_id                 = "aws_vpc.vpc.id"
  subnet_id              = aws_subnet.private[0].id
  vpc_security_group_ids = [aws_security_group.apache.id]
  tags = {
    name      = "stage-apache"
    terraform = "true"
  }
}