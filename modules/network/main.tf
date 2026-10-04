resource "aws_vpc" "non-prod-vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name       = "${var.environment}-vpc-development"
    name       = "${var.environment}-vpc-development"
    managed_by = "terraform"
  }
}

resource "aws_subnet" "non-prod-private-subnet" {
  vpc_id            = aws_vpc.non-prod-vpc.id
  cidr_block        = var.private_subnet_cidr_block
  availability_zone = var.availability_zone

  tags = {
    Name       = "${var.environment}-private-subnet"
    name       = "${var.environment}-private-subnet"
    managed_by = "terraform"
  }
}

resource "aws_subnet" "non-prod-public-subnet" {
  vpc_id                  = aws_vpc.non-prod-vpc.id
  cidr_block              = var.public_subnet_cidr_block
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true
  tags = {
    Name       = "${var.environment}-public-subnet"
    name       = "${var.environment}-public-subnet"
    managed_by = "terraform"
  }
}

resource "aws_route_table" "non-prod-private-rt" {
  vpc_id = aws_vpc.non-prod-vpc.id

  tags = {
    Name       = "${var.environment}-private-rt"
    name       = "${var.environment}-private-rt"
    managed_by = "terraform"
  }
}

resource "aws_route_table_association" "non-prod-private-rt-association" {
  subnet_id      = aws_subnet.non-prod-private-subnet.id
  route_table_id = aws_route_table.non-prod-private-rt.id
}

resource "aws_route_table" "non-prod-public-rt" {
  vpc_id = aws_vpc.non-prod-vpc.id

  # Defined inline directly inside the route table
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.non-prod-igw.id
  }

  tags = {
    Name        = "${var.environment}-public-rt"
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}

resource "aws_internet_gateway" "non-prod-igw" {
  vpc_id = aws_vpc.non-prod-vpc.id

  tags = {
    Name       = "${var.environment}-igw"
    name       = "${var.environment}-igw"
    managed_by = "terraform"
  }
}

resource "aws_security_group" "non-prod-sg" {
  name        = "${var.environment}-sg"
  description = "Security group for ${var.environment} environment"
  vpc_id      = aws_vpc.non-prod-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name       = "${var.environment}-sg"
    name       = "${var.environment}-sg"
    managed_by = "terraform"
  }
}

resource "aws_security_group" "test-sg" {
  name        = "test-sg"
  description = "Security group for test environment"
  vpc_id      = aws_vpc.non-prod-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name       = "test-sg"
    name       = "test-sg"
    managed_by = "terraform"
  }
}