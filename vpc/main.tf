
# VPC
resource "aws_vpc" "main" {
  # Base network range for entire infrastructure
  cidr_block = var.main_vpc

  # Enables internal AWS DNS resolution (required for ECS/RDS/etc)
  enable_dns_support = true

  # Allows instances to receive DNS hostnames
  enable_dns_hostnames = true

  # Tags help identify, organize and bill resources
  tags = {
    Name        = "${var.project_name}-${var.environment}-vpc"
    Project     = var.project_name
    Environment = var.environment
  }
}

# INTERNET GATEWAY (IGW)
resource "aws_internet_gateway" "igw" {
  # Attach IGW to the VPC so public subnets can reach internet
  vpc_id = aws_vpc.main.id

  # Tags for clarity and governance
  tags = {
    Name        = "${var.project_name}-${var.environment}-igw"
    Project     = var.project_name
    Environment = var.environment
  }
}

