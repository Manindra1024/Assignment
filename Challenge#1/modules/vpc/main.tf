
# Create VPC
resource "aws_vpc" "test01" {
  cidr_block = var.vpc_cidr
  enable_dns_support = "true"
  enable_dns_hostnames = "true"
  tags = {
        Name = var.VPCName
    }
}

# create igw 

resource "aws_internet_gateway" "test-igw" {
    vpc_id = 
}

# Create Public subnet and attach igw --> for frontend component

resource "aws_subnet" "test-subnet-public" {
    
}

resource "aws_route_table" "public" {
  
}

resource "aws_route" "public_internet_gateway" {
  
}

resource "aws_route_table_association" "public" {
    
  
}

# Create private Subnet and attach NAT agateway --> applicvation server ciomponent

resource "aws_subnet" "test-subnet-private" {
    vpc_id =
}

resource "aws_eip" "nat_eip" {

}

resource "aws_nat_gateway" "nat" {

}

resource "aws_route_table" "private" {

}

resource "aws_route" "private_nat_gateway" {

}

resource "aws_route_table_association" "private" {

}

## Create DMZ Subnet for DB Component Server

resource "aws_subnet" "test-dmz-public" {
    vpc_id = 
}
