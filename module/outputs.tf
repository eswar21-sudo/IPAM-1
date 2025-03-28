output "ipam_id" {
  value = aws_vpc_ipam.this.id
}

output "ipam_pools" {
  value = aws_vpc_ipam_pool.this[*].id
}