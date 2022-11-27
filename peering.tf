resource "aws_vpc_peering_connection" "peer" {
  peer_vpc_id   = aws_vpc.aws_vpc.id
  vpc_id        = var.DEFAULT_VPC_ID
}