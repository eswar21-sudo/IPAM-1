module "ipam" {
  source = "./modules/ipam"

  description       = var.description
  operating_regions = var.operating_regions
  cidr_pools        = var.cidr_pools
}
