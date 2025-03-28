description = "Global IPAM for Multi-Region CIDR Management"

operating_regions = [
  "us-east-1",
  "us-west-2",
  "eu-west-1"
]

cidr_pools = [
  {
    region                 = "us-east-1"
    description            = "CIDR Pool for us-east-1"
    cidr                   = "10.0.0.0/16"
    auto_import            = true
    default_netmask_length = 24
  },
  {
    region                 = "us-west-2"
    description            = "CIDR Pool for us-west-2"
    cidr                   = "10.1.0.0/16"
    auto_import            = true
    default_netmask_length = 24
  },
  {
    region                 = "eu-west-1"
    description            = "CIDR Pool for eu-west-1"
    cidr                   = "10.2.0.0/16"
    auto_import            = true
    default_netmask_length = 24
  }
]
