resource "aws_vpc" "awsVPC" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "awsVPCSubnet" {
  vpc_id     = "${aws_vpc.awsVPC.id}"
  cidr_block = var.vpc_subnet_cidr

  tags = {
    Name = var.vpc_subnet_name
  }
}

output "net_id" {
  value = "${aws_vpc.awsVPC.id}"
}

output "subnet_id" {
  value = "${aws_subnet.awsVPCSubnet.id}"
}
