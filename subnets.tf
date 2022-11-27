resource "aws_subnet" "public" {
  count             = length(var.PUBLIC_SUBNET_CIDR)
  vpc_id            = aws_vpc.public.id
  cidr_block        = element(var.PUBLIC_SUBNET_CIDR, count.index)
  availability_zone = element(var.AZ, count.index)
  tags = {
    Name = "${var.ENV}-pub-${element(var.AZ, count.index)}"
  }
}

resource "aws_subnet" "private" {
  count             = length(var.PRIVATE_SUBNET_CIDR)
  vpc_id            = aws_vpc.private.id
  cidr_block        = element(var.PRIVATE_SUBNET_CIDR, count.index)
  availability_zone = element(var.AZ, count.index)
  tags = {
    Name = "${var.ENV}-prv-${element(var.AZ, count.index)}"
  }
}
