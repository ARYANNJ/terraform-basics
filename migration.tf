moved {
  from = aws_security_group.non-prod-sg
    to   = module.network.aws_security_group.development-sg
}

moved {
  from = aws_subnet.non-prod-public-subnet
    to   = module.network.aws_subnet.non-prod-public-subnet
}

moved {
  from = aws_subnet.non-prod-private-subnet
    to   = module.network.aws_subnet.non-prod-private-subnet
}

moved {
  from = aws_route_table.non-prod-private-rt
    to   = module.network.aws_route_table.non-prod-private-rt
}

moved {
  from = aws_route_table_association.non-prod-private-rt-association
    to   = module.network.aws_route_table_association.non-prod-private-rt-association
}

moved {
  from = aws_route_table.non-prod-public-rt
    to   = module.network.aws_route_table.non-prod-public-rt
}

moved {
  from = aws_internet_gateway.non-prod-igw
    to   = module.network.aws_internet_gateway.non-prod-igw  
}

moved {
  from = aws_vpc.non-prod-vpc
    to   = module.network.aws_vpc.non-prod-vpc
}   

moved {
  from = aws_security_group.development-sg
    to   = module.network.aws_security_group.non-prod-sg
}
