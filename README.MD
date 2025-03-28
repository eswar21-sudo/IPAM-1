# AWS IPAM Terraform Module

## Overview
This module creates an AWS VPC IPAM with support for multi-region and multi-CIDR pools.

## Usage

```hcl
module "ipam" {
  source = "./modules/ipam"

  description       = var.description
  operating_regions = var.operating_regions
  cidr_pools        = var.cidr_pools
}
```

## Inputs
- `description`: (String) IPAM description.
- `operating_regions`: (List) AWS Regions.
- `cidr_pools`: (List of Objects) Pool configuration.

## Outputs
- `ipam_id`: IPAM ID.
- `ipam_pools`: List of IPAM pool IDs.
