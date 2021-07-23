
module "vpc" {
  source = "modules/vpc"
  
  vpc_name = "test vpc"
  cidr =
  region =
}
  
module "deployapp" {
  source = "modules/deployapp"
  
  vpc_name = "test vpc"
  cidr =
  region =
}  
