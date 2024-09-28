# VPC Peering
resource "aws_vpc_peering_connection" "peering" {
  count = var.is_peeting_required ? 1: 0
  vpc_id        = aws_vpc.main.id
  peer_vpc_id =  data.aws_vpc.default.id
  auto_accept = true
  tags = merge(
    var.common_tags,
    var.vpc_peering_tags,
     {
        Name = "${local.resource_name}-default"
      }
  )
}

# peering connction with public subnet

resource "aws_route" "public_peering" {
  route_table_id            = aws_route_table.public.id
  destination_cidr_block    = data.aws_vpc.default.cidr_block
  vpc_peering_connection_id = "aws_vpc_peering_connection.peering[count.index].id"
  depends_on = [ aws_vpc_peering_connection.peering ]
}

# peering connction with private subnet

resource "aws_route" "private_peering" {
  route_table_id            = aws_route_table.public.id
  destination_cidr_block    = data.aws_vpc.default.cidr_block
  vpc_peering_connection_id = "aws_vpc_peering_connection.peering[count.index].id"
  depends_on = [ aws_vpc_peering_connection.peering ]
}

# peering connction with database subnet

resource "aws_route" "database_peering" {
  route_table_id            = aws_route_table.public.id
  destination_cidr_block    = data.aws_vpc.default.cidr_block
  vpc_peering_connection_id = "aws_vpc_peering_connection.peering[count.index].id"
  depends_on = [ aws_vpc_peering_connection.peering ]
}


# peering connction with database subnet

resource "aws_route" "default_peering" {
  route_table_id            = data.aws_route_table.main.route_table_id
  destination_cidr_block    = var.vpc_cidr
  vpc_peering_connection_id = "aws_vpc_peering_connection.peering[count.index].id"
  depends_on = [ aws_vpc_peering_connection.peering ]
}



