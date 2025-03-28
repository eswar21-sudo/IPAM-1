resource "aws_vpc_ipam" "this" {
  description = var.description
  dynamic "operating_regions" {
    for_each = var.operating_regions 
content {
      region_name = operating_regions.value
    }
  }
}

resource "aws_vpc_ipam_pool" "this" {
  count            = length(var.cidr_pools)
  address_family   = "ipv4"
  ipam_scope_id    = aws_vpc_ipam.this.private_default_scope_id
  locale           = var.cidr_pools[count.index].region
  description      = var.cidr_pools[count.index].description
  auto_import      = var.cidr_pools[count.index].auto_import
  allocation_default_netmask_length = var.cidr_pools[count.index].default_netmask_length
}

resource "aws_vpc_ipam_pool_cidr" "this" {
  count         = length(var.cidr_pools)
  ipam_pool_id  = aws_vpc_ipam_pool.this[count.index].id
  cidr          = var.cidr_pools[count.index].cidr
}
