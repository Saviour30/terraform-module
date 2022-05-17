module "vpc" {
  source = "../../CHILD/VPC"
}

module "vpc-app" {
  source = "../../CHILD/"
  vpc_cidr = "20.0.0.0/16"
  pub_cidr = "20.0.1.0/24"
  prv_cidr = "20.0.2.0/24"
  tag = "app"
}

module "app-server" {
  source = "git::https://github.com/Saviour30/terraform-module.git//CHILD/EC2"
  #source = "git@github.com/Saviour30/terraform-module//CHILD/EC2"
}