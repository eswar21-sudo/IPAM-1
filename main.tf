provider "aws" {
  region = "var.region"
}
module "ipam" {
  source = "./module"
  description       = var.description
  operating_regions = var.operating_regions
  cidr_pools        = var.cidr_pools
}
